# Evals

## Layout

- `toulmin/eval.yaml`: the eval's name and description.
- `toulmin/tasks/*.yaml`: one file per writing task, each with `name`, `prompt` and `reader`. The judge sees `reader` and scores the document as that reader. The runner never sends `reader` to the model under test; the model sees only `prompt`.
- `toulmin/PROMPTS.md`: the source of the prompt and reader text. The task files are generated from it.
- `toulmin/check-prompts`: checks the task files. With no arguments, it checks that each of the five tasks exists, has `name`, `prompt` and `reader`, and that no prompt mentions the skill or what it does. With `--verbatim FILE`, it also checks that each prompt is byte-identical to the prompt for that task in `FILE`.

## Requirements

- smevals: `uv tool install smevals`
- yq and jq: `brew install yq jq`

Configs, the runner, graders and checkers come in later tickets.

## Model rule

Every model call in this eval uses Opus: the model under test, the judge and any grader.
