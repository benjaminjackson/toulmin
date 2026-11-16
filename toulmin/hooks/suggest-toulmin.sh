#!/usr/bin/env bash
# Claude Code UserPromptSubmit hook for the toulmin plugin.
# Why it exists: in a session that lists many skills, the model wrote about one piece in four without loading the
# toulmin skill, although the request matched the skill's description. A one-line reminder next to the request fixes that.
# What it does: reads the hook's JSON from standard input, and when the user's prompt asks for a piece of writing
# addressed to someone, prints one line. Claude Code adds plain standard output from this hook to the model's context.
# For any other prompt it prints nothing, so it costs no tokens there. It always exits 0, so it can never block a prompt.

set -uo pipefail

# `// empty` makes jq print nothing when the key is missing. If jq fails, the prompt stays empty and nothing is printed.
user_prompt=$(jq -r '.prompt // empty' 2>/dev/null)

# Words that mark a request to write something for a reader. Matching is case-insensitive (grep -i) and uses
# extended regular expressions (grep -E). \b is a word boundary, so "draft" does not match inside "draftsman".
writing_request_pattern='\b(write|writing|rewrite|draft|redraft|reword|compose)\b|help me (say|word|phrase|put)|\b(reply|respond|response) to\b|\b(pitch|proposal|cover letter|reference letter|recommendation letter|open letter|op-ed|speech|public comment|sales page|landing page|press release|announcement|memo|appeal|case for support|grant application)\b|\b(email|letter|message|note|update) (to|for) (my|our|the|a|an)\b|\b(convinc|persuad)'

if printf '%s' "$user_prompt" | grep -qiE "$writing_request_pattern"; then
  echo "If this request is for a piece that has to bring a particular reader to agree, decide or act, load the toulmin:toulmin skill before you write anything. If it is not, ignore this line."
fi
exit 0
