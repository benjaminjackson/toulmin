#!/usr/bin/env bash
# Reads the `user_knows` key of a task: true things the user knows but did not say in the request.
# The simulated user in conversation mode answers from it, and the judges and the fact check are told about it,
# because a writer may lawfully use a fact the user gave when asked.
# Source this file, then call `task_user_knows <task name>`.

# BASH_SOURCE[0] is the path of this file, also when it is sourced by another script.
user_knows_eval_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)

# Print the user_knows text of one task, or nothing when the task file has no such key.
# Argument: the task name. The key is read from tasks/<task>.yaml, the way judge_note is read, so that runs made
# before the key was written are judged with it too.
# TOULMIN_TASKS_DIR replaces the tasks folder; the offline tests use it to point at a copy of a task.
# The key may be a YAML list or a block of text. A list is printed as one "- " line per item.
task_user_knows() {
  local task_name=$1
  local tasks_directory=${TOULMIN_TASKS_DIR:-$user_knows_eval_directory/tasks}
  local task_file="$tasks_directory/$task_name.yaml"
  if [ ! -f "$task_file" ]; then
    return 0
  fi
  # `tag` is yq's name for the YAML type of a value; "!!seq" is a list. `// ""` prints an empty string when the key is missing.
  /opt/homebrew/bin/yq -r 'if (.user_knows | tag) == "!!seq" then (.user_knows | map("- " + .) | join("\n")) else (.user_knows // "") end' "$task_file"
}

# Print the paragraph that tells a judge or the fact check what the user also knew, or nothing when the task has none.
# Argument: the task name. Why one function: the judge, pairwise and factcheck must say it in the same words.
user_knows_paragraph() {
  local task_name=$1
  local user_knows_text
  user_knows_text=$(task_user_knows "$task_name")
  if [ -z "${user_knows_text//[[:space:]]/}" ]; then
    return 0
  fi
  printf 'The user also knew the following and gave some of it to the writer when asked:\n<user_knows>\n%s\n</user_knows>' "$user_knows_text"
}
