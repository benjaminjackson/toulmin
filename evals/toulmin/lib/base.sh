#!/usr/bin/env bash
# Shared base for every `claude` call this eval makes: the two run arms, the judge and the head-to-head judge.
# Source this file, then call `claude_stripped` with the extra flags and the prompt on stdin.
#
# Why these flags (proved by evals/toulmin/isolation-proof):
# - `--setting-sources project` leaves out the user's settings, so no skill from ~/.claude/skills,
#   no installed plugin, no user hook and no user CLAUDE.md is loaded. The login still works.
# - `--strict-mcp-config` with no `--mcp-config` loads no MCP server.
# - `--safe-mode` is NOT used: under it a plugin passed with `--plugin-dir` is listed but its skill does not load.
# - The call runs from a new empty directory outside this repository. A project settings file is found by
#   walking up from the working directory, and this repository's own .claude/settings.json has a hook.

# Run `claude -p` stripped of all user and project customisation, in a new empty directory that is removed afterwards.
# Arguments: extra flags for claude (for example --model, --tools, --plugin-dir). Standard input: the prompt.
claude_stripped() {
  local empty_directory
  empty_directory=$(mktemp -d)
  claude_stripped_in_directory "$empty_directory" "$@"
  local exit_status=$?
  rmdir "$empty_directory" 2>/dev/null
  return $exit_status
}

# Run `claude -p` stripped the same way as claude_stripped, but in a directory the caller made and keeps.
# Why: a session can be resumed only from the directory it started in, so a conversation of several turns
# needs one directory that lasts for all of them. The caller makes it with `mktemp -d` (so it is outside
# this repository and empty) and removes it at the end.
# Arguments: the directory, then extra flags for claude. Standard input: the prompt.
claude_stripped_in_directory() {
  local working_directory=$1
  shift
  (cd "$working_directory" && claude -p --setting-sources project --strict-mcp-config "$@")
}
