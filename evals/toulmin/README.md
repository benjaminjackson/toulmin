# The toulmin eval

This eval answers one question: does a document written with the skill work better on its intended reader than a document written by Claude with no skill?

## How a round works

1. `run-round <runs-dir> <n> [grader] [set]` writes the documents. Each task (one user request) is run `n` times with the skill and `n` times without it, in a stripped headless `claude -p` session. The only difference between the two arms is the `--plugin-dir` flag. `isolation-proof` shows that the stripped session loads nothing else.
2. The `judge` grader checks each transcript (did the skill load, did the other arm stay clean), extracts the finished document, and scores it as the intended reader.
3. `pairwise <runs-dir>` shows a judge two documents for the same task, one from each arm, unlabelled, in both orders. A pair is a win only when both orders name the same arm. `--judge gemini` runs the same prompt on `gemini-4-argon` and writes to `pairwise-gemini/`. `--judge fable` runs the same prompt on `claude-fable-5-2` and writes to `pairwise-fable/`. The fable judge is held out: do not run it on tune rounds, only on the sealed test, so that skill changes cannot be fitted to it.
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

## Result of the sealed test (2026-11-16)

The shipped skill (plugin version 0.3.0) against Claude with no skill, on the 12 sealed tasks, 4 runs each, in conversation mode. The runs are in `runs/sealed-*`.

| Measure | Opus judge | Gemini judge | Fable judge (held out) |
|---|---|---|---|
| Wins / ties / losses in 48 pairs | 48 / 0 / 0 | 46 / 1 / 1 | 48 / 0 / 0 |
| Wilson 95% lower bound | 0.93 | 0.88 | 0.93 |
| Share of wins marked clear | 0.96 | 0.96 | 0.96 |

- Invented facts per document: 1.2 with the skill, 2.2 without.
- A person rated 10 of these pairs blind (`blind-check/packet.md`) and preferred the skill's document in all 10.
- In a normal session that lists about 130 skills, the skill loaded in 21 of 29 sessions from its description alone, and in 28 of 29 and 27 of 29 (two runs) with the plugin's `UserPromptSubmit` hook (`trigger-rate`).
- With the hook in place, the plugin repeated its tune-set result: 36 wins in 36 pairs under the Opus judge and under the Gemini judge (`runs/conv-shipped-0.3`).

Where the gain comes from, from head-to-head rounds between three versions on the same sealed tasks (numbers are for the Opus, Fable and Gemini judges, in that order):

- A control that only says "ask the user questions first" (`variants/ask-only`) beats Claude with no skill in 45, 46 and 45 of 48 pairs. Asking is most of the gain.
- A control with the skill's question list and no framework (`variants/questions-only`) beats the ask-only control in 40, 38 and 37 of 48 pairs. The specific questions are a second, reliable gain.
- The shipped skill against the questions-only control: 28 wins, 10 ties, 10 losses (Opus); 27, 11, 10 (Fable); 23, 9, 16 (Gemini). The framework adds at most a small gain in drafting, and the Gemini judge does not confirm it. Invented facts are about the same: 1.4 per document against 1.6.
- In headless mode, where nobody answers the questions, the skill is only slightly better than Claude with no skill (tune tasks: 21-7-8 under Opus, 17-6-13 under Gemini).

### Planning and checking

`uses-test` tests the skill's two other uses on the 24 tune and sealed tasks, one run each, in a session that cannot ask the user anything: planning a piece before any prose exists, and checking a draft that Claude wrote with no skill. A blind judge, as an editor who knows the reader and the true situation, says which reply would lead to the better piece. Results are in `runs/uses/`.

| Use | Opus judge, wins / ties / losses | Fable judge, wins / ties / losses |
|---|---|---|
| Planning | 17 / 3 / 4 | 17 / 2 / 5 |
| Checking | 14 / 8 / 2 | 15 / 4 / 5 |

The skill's advice wins about three pairs in four, and most of those wins are marked slight. Its replies are about 15% longer, and the test did not check whether length alone moves the judges.

## What this eval cannot tell you

- Both judges are language models. A skill change that comes from reading their reasons can learn what these judges like. The sealed tasks do not guard against that. Only a person ranking blind pairs does.
- The writer cannot ask the user anything in a headless session. `headless-note.txt` tells both arms to state a recommendation and go on. Conversation mode lets the writer ask, but the user who answers is a model playing the user from `user_knows`.
- The skill is the only skill in the session, so the rate at which it loads is a best case.

## Tests

`test-summary`, `test-verdict`, `checkers/test-checkers` and `checkers/test-judge` make no model calls and run in seconds.
