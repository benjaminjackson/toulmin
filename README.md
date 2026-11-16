# toulmin

A Claude Code plugin that helps Claude write, plan and check persuasive pieces: pitches, proposals, board memos, fundraising asks, op-eds, sales emails, cover letters and replies to objections. It uses Stephen Toulmin's model of argument, which splits an argument into six parts: claim, grounds, warrant, backing, qualifier and rebuttal.

The main change you will see: before Claude writes a persuasive piece, it asks you a few questions. The questions are about the facts the reader needs and that your request did not include. Then it writes from your answers, and it does not invent the missing facts.

## Install

You need [Claude Code](https://claude.com/claude-code) and `jq`. The prompt hook uses `jq` to read your prompt. Without `jq`, the hook prints nothing and the skill loads less often. When a session starts without `jq`, a second hook (`toulmin/hooks/check-jq.sh`) tells Claude to ask you to install it. On macOS, install it with `brew install jq`.

```
claude plugin marketplace add benjaminjackson/toulmin
claude plugin install toulmin@toulmin
```

Run `claude plugin list` to confirm that the plugin is installed. The skill is named `toulmin:toulmin`.

## How it loads

You do not have to call the skill by name. Claude loads it when a request asks for a piece that has to bring a particular reader to agree, decide or act, even if the request says only "write" or "draft".

The plugin also adds a `UserPromptSubmit` hook (`toulmin/hooks/suggest-toulmin.sh`). When your prompt asks for a piece of writing for a reader, the hook adds one line that tells Claude to load the skill. For other prompts it prints nothing. In tests with about 130 other skills installed, the skill loaded in 21 of 29 sessions without the hook and in 28 of 29 with it.

To load it yourself, ask for it by name, for example "use the toulmin skill to check this memo".

## How to use it

### Drafting

Ask for the piece as you usually would:

> Draft an email to our landlord asking to defer the March rent increase by six months.

Claude works through the six parts, then sends you one message with up to six questions before it writes. Typical questions:

- What does the reader get, and what does it cost them?
- What objection will this reader raise, and what do you have that answers it?
- What shows that you can do what you promise?
- What can you commit to: a date, a number, a named person?
- What will the reader find out anyway, such as a cost or a past failure?

For a long or high-stakes piece, Claude also shows the claim, grounds and warrant above the questions, so you can correct them before it writes. For a short email, it sends only the questions.

If your claim is bigger than your facts support, Claude tells you so, suggests a narrower version and gives you the choice. It does not narrow the claim without asking you.

Answer what you know. If you do not know an answer, say so. For example, if you do not know when the landlord's lease renewal is due, Claude leaves the date out of the email. It does not write "[date]" or make up a month.

### Planning

Use this before any draft exists:

> How do I convince the board to move the conference online next year?

Claude identifies who decides, what that reader already believes, and which facts they will accept. It then gives you the claim, grounds, warrant, backing, rebuttals and qualifier as short answers. If one of the rebuttals names a person or group who can block the outcome, Claude tells you that they need a separate argument. For example, if the sponsors who pay for booth space could pull out of an online event, Claude tells you to plan a second case written for the sponsors.

### Checking

Give Claude a draft, yours or someone else's:

> Does this op-ed hold up? Where is it weak?

Claude writes out the claim, the grounds and the warrant that the draft depends on. It then checks whether the claim is overstated, whether the warrant is sound, and whether the reader will accept the grounds. It reports the problems in plain terms about the piece, for example "the piece never says why less staff turnover would raise profit". It does not use the model's labels in the report unless you are working with the model directly.

### Hand-offs

For three kinds of piece, Claude passes the finished draft to a separate review skill: `message:judge` for political messages, `case-for-support:judge` for fundraising cases, and `pitch:sharpen` for story pitches. These skills come from other plugins. If you do not have them installed, Claude skips this step.

## What it does not do

It does not supply facts. If a grant application needs last year's number of clients served and you did not give it, Claude asks you for the number or looks for it in your files or on the web. It does not invent a number.

If your only evidence is one pilot with eight users, Claude tells you that the pilot supports a claim that the product can work. It does not let you claim that the product will work for every customer.

## Does it work?

The eval in `evals/toulmin/` compares documents written with the skill to documents written by Claude with no skill. A judge model reads each pair blind, as the intended reader, in both orders.

On 12 tasks that were kept sealed until the final test (48 pairs, with a simulated user who answers Claude's questions):

| Judge | Skill wins / ties / losses |
|---|---|
| Opus | 48 / 0 / 0 |
| Gemini | 46 / 1 / 1 |
| Fable (held out) | 48 / 0 / 0 |

Documents written with the skill had 1.2 invented facts on average, against 2.2 without the skill. A person rated 10 of the pairs blind and preferred the skill's version in all 10.

Most of the gain comes from asking questions before writing. The specific questions the skill asks add a second, smaller gain. The rest of the framework adds little to drafting, but it helps with planning and checking, where the skill won about three pairs in four. When nobody can answer the questions, the skill is only a little better than Claude with no skill.

Full method, results and limits are in [`evals/toulmin/README.md`](evals/toulmin/README.md).

## Repository layout

- `toulmin/skills/toulmin/SKILL.md`: the skill.
- `toulmin/skills/toulmin/references/`: notes from Karbach's paper on the model and from Toulmin's books. Claude reads these when the skill page does not cover a question.
- `toulmin/hooks/`: the prompt hook and the `jq` check described above.
- `.claude-plugin/marketplace.json`: the marketplace that lists the plugin.
- `evals/`: the eval harness, tasks and results.

## Bugs and questions

Open an issue at [github.com/benjaminjackson/toulmin/issues](https://github.com/benjaminjackson/toulmin/issues). If the skill did not load when you expected it to, include the prompt you used.

## License

MIT. See [LICENSE](LICENSE).
