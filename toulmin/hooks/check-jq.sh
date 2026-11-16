#!/usr/bin/env bash
# Claude Code SessionStart hook for the toulmin plugin.
# Why it exists: the plugin's UserPromptSubmit hook (suggest-toulmin.sh) uses jq to read the user's prompt. Without jq
# that hook prints nothing, so the toulmin skill loads less often, and nothing tells the user why.
# What it does: when jq is not on the PATH, prints a note that tells Claude to ask the user to install jq.
# Claude Code adds plain standard output from a SessionStart hook to the model's context.
# When jq is installed it prints nothing, so it costs no tokens. It always exits 0, so it can never block a session.

# `command -v` prints the path of a command and fails when the command is not found. Its output is not needed here.
if ! command -v jq >/dev/null 2>&1; then
  echo "The toulmin plugin needs jq, and jq is not installed. Without it, the plugin's prompt hook cannot remind you to load the toulmin:toulmin skill. At a natural point early in this session, tell the user this in one or two sentences and ask them to install jq (on macOS: brew install jq; on Debian or Ubuntu: sudo apt install jq). Do not install it yourself."
fi
exit 0
