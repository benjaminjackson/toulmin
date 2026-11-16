# The toulmin eval

This eval answers one question: does a document written with the skill work better on its intended reader than a document written by Claude with no skill?

## How a round works

1. `run-round <runs-dir> <n> [grader] [set]` writes the documents. Each task (one user request) is run `n` times with the skill and `n` times without it, in a stripped headless `claude -p` session. The only difference between the two arms is the `--plugin-dir` flag. `isolation-proof` shows that the stripped session loads nothing else.
2. The `judge` grader checks each transcript (did the skill load, did the other arm stay clean), extracts the finished document, and scores it as the intended reader.
3. `pairwise <runs-dir>` shows a judge two documents for the same task, one from each arm, unlabelled, in both orders. A pair is a win only when both orders name the same arm. `--judge gemini` runs the same prompt on `gemini-4-argon` and writes to `pairwise-gemini/`.
4. `factcheck <runs-dir>` counts the statements each document presents as fact that the request does not give.
5. `summary <runs-dir>` prints scores and failures per task. `verdict <runs-dir>` tests the readiness bars below.

`run-variant <name>` does all of this for one skill variant in `variants/<name>/` on the tune set, and reuses the baseline's no-skill documents so that every variant is judged against the same text.

## Modes

`TOULMIN_MODE` picks how the writer works. It applies to both arms alike.

- `headless` (the default): one turn. `headless-note.txt` tells the writer that nobody can answer.
- `conversation`: `conversation-note.txt` tells the writer that the user is present. While the writer's reply has no `<final_document>` pair, a simulated user (one Opus call with no tools) answers from the request and the task's `user_knows`, and the same writer session is resumed with the answer. After three answers the next user message is "Please write it now with what you have." If there is still no document, the run ends with a format failure. Each run also writes `dialogue.jsonl`, and `transcript-check` records `user_replies`, the number of user messages after the request.

For example: `TOULMIN_MODE=conversation ./run-round runs/<name> 3 judge tune`.

## Tasks

Each file in `tasks/` has a `prompt` (the only text the writer sees), a `reader` (only the judge sees it), a `type` (the kind of document) and a `set`:

- `original`: the first five tasks. Four rounds of skill changes were tuned on these.
- `tune`: 12 tasks, one per document type. Read their results freely when changing the skill.
- `sealed`: 12 tasks, one per document type. Do not read these files or their results while the skill is still changing. They are for one final test.

A task may also have `user_knows`: true things the user knows but did not put in the request. Only the simulated user in conversation mode sees it. The judge, `pairwise` and `factcheck` are told about it in both modes, because a writer may use a fact the user gave when asked.

`check-prompts` checks the keys, the set sizes, and that no prompt names the skill or what it does.

## Readiness bars

`verdict` prints PASS or FAIL for these, under each judge:

- Condition 2: the skill wins at least 75% of pairs (a tie counts as half), the Wilson 95% lower bound is above 60%, and no document type has more losses than wins.
- Condition 3: at least half of the wins are marked clear by the judge in both orders.
- Condition 4: the two judges give the same verdict on at least 80% of pairs.
- Condition 5: documents written with the skill have no more invented facts on average than documents written without it.

## What this eval cannot tell you

- Both judges are language models. A skill change that comes from reading their reasons can learn what these judges like. The sealed tasks do not guard against that. Only a person ranking blind pairs does.
- The writer cannot ask the user anything in a headless session. `headless-note.txt` tells both arms to state a recommendation and go on. Conversation mode lets the writer ask, but the user who answers is a model playing the user from `user_knows`.
- The skill is the only skill in the session, so the rate at which it loads is a best case.

## Tests

`test-summary`, `test-verdict`, `checkers/test-checkers` and `checkers/test-judge` make no model calls and run in seconds.
