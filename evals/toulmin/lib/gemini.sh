#!/usr/bin/env bash
# Shared call to Google's Gemini interactions API for this eval: the second head-to-head judge and the fact checker.
# Source this file, then call `gemini_text <model>` with the prompt on stdin.
#
# The request shape, the way the key is passed and the error handling follow
# ~/github/oracle/oracle/skills/oracle/gemini_oracle.sh, which is known to work.
# Unlike that script, this call gives the model no tools: the judge and the checker must answer only from the prompt.

GEMINI_API_URL="https://generativelanguage.googleapis.com/v1beta/interactions"
GEMINI_API_REVISION="2026-05-20"
GEMINI_MAX_ATTEMPTS=3
GEMINI_RETRY_WAIT_SECONDS=5

# Send the prompt on stdin to one Gemini model with no tools and print the answer text.
# Arguments: the model name. On any failure, print one line of reason on stderr and return non-zero.
# Why the retry: HTTP 429 (rate limit) and 5xx (server error) often pass on a second try, and a run of 30 calls
# should not lose one to a short overload. Other errors (a bad key, a bad request) are not retried.
gemini_text() {
  local model=$1
  if [ -z "${GEMINI_API_KEY:-}" ]; then
    echo "gemini_text: GEMINI_API_KEY is not set" >&2
    return 1
  fi
  local prompt_file
  prompt_file=$(mktemp)
  local request_file
  request_file=$(mktemp)
  local response_file
  response_file=$(mktemp)
  cat > "$prompt_file"
  if ! [ -s "$prompt_file" ]; then
    echo "gemini_text: the prompt on standard input is empty" >&2
    rm -f "$prompt_file" "$request_file" "$response_file"
    return 1
  fi
  # jq builds the request, so quotes and newlines in the prompt are escaped correctly.
  # --rawfile reads the whole prompt file into a jq variable. "store: false" tells Google not to keep the interaction.
  if ! jq -n --arg model "$model" --rawfile prompt "$prompt_file" '{model: $model, input: $prompt, store: false}' > "$request_file"; then
    echo "gemini_text: could not build the request JSON" >&2
    rm -f "$prompt_file" "$request_file" "$response_file"
    return 1
  fi

  local attempt
  local http_status=""
  local failure_reason=""
  for ((attempt = 1; attempt <= GEMINI_MAX_ATTEMPTS; attempt++)); do
    # The key header is not on curl's command line, where "ps" could show it. "--header @file" reads the header
    # from a file, and "<(...)" gives curl the output of printf (a bash builtin, so no command line holds the key).
    local curl_exit_code=0
    http_status=$(
      curl --silent --show-error --max-time 300 \
        --output "$response_file" --write-out '%{http_code}' \
        --request POST "$GEMINI_API_URL" \
        --header @<(printf 'x-goog-api-key: %s\n' "$GEMINI_API_KEY") \
        --header "Content-Type: application/json" \
        --header "Api-Revision: $GEMINI_API_REVISION" \
        --data-binary "@$request_file" 2>/dev/null
    ) || curl_exit_code=$?
    if [ "$curl_exit_code" -ne 0 ]; then
      failure_reason="the request to Google failed (curl exit code $curl_exit_code)"
    elif [ "$http_status" = "200" ]; then
      failure_reason=""
      break
    else
      # Google's error body is {"error": {"code", "message"}}, or for some errors the same object inside a
      # one-item array with the readable code in "status". The jq program accepts both shapes.
      local error_text
      error_text=$(jq -r '
        (if type == "array" then .[0] else . end)
        | .error
        | "\(.status // .code): \(.message)"' "$response_file" 2>/dev/null | head -n 1) || true
      if [ -z "$error_text" ] || [ "$error_text" = "null: null" ]; then
        error_text=$(head -c 200 "$response_file" | tr '\n' ' ')
      fi
      failure_reason="Gemini API error (HTTP $http_status): $error_text"
    fi
    # Retry only on a network failure, a rate limit (429) or a server error (5xx).
    local should_retry=no
    if [ "$curl_exit_code" -ne 0 ] || [ "$http_status" = "429" ]; then
      should_retry=yes
    elif [[ "$http_status" == 5* ]]; then
      should_retry=yes
    fi
    if [ "$should_retry" = no ] || [ "$attempt" -eq "$GEMINI_MAX_ATTEMPTS" ]; then
      break
    fi
    sleep $((GEMINI_RETRY_WAIT_SECONDS * attempt))
  done

  if [ -n "$failure_reason" ]; then
    echo "gemini_text: $failure_reason" >&2
    rm -f "$prompt_file" "$request_file" "$response_file"
    return 1
  fi

  # The answer is the text of every "model_output" step, joined together.
  local answer
  answer=$(jq -r '[.steps[]? | select(.type == "model_output") | .content[]? | select(.type == "text") | .text] | join("\n")' "$response_file" 2>/dev/null) || true
  local interaction_status
  interaction_status=$(jq -r '.status // "missing"' "$response_file" 2>/dev/null) || true
  rm -f "$prompt_file" "$request_file" "$response_file"
  if [ -z "$answer" ]; then
    echo "gemini_text: Gemini returned no answer text (status: $interaction_status)" >&2
    return 1
  fi
  # printf, not echo: echo would treat an answer that starts with "-n" as an option.
  printf '%s\n' "$answer"
}
