## Judge: opus

Pairs 48. With skill: wins 48, ties 0, losses 0.
Win rate (tie = half a win) 1, Wilson 95% lower bound 0.926.
Clear wins 46 of 48 (share 0.958).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 4 | 0 | 0 |  |
| investor-update | 4 | 0 | 0 |  |
| negotiation-email | 4 | 0 | 0 |  |
| open-letter | 4 | 0 | 0 |  |
| promotion-case | 4 | 0 | 0 |  |
| public-comment-speech | 4 | 0 | 0 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 4 | 0 | 0 |  |
| staff-announcement | 4 | 0 | 0 |  |
| win-back-email | 4 | 0 | 0 |  |

## Judge: gemini

Pairs 48. With skill: wins 46, ties 1, losses 1.
Win rate (tie = half a win) 0.969, Wilson 95% lower bound 0.875.
Clear wins 44 of 46 (share 0.957).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 3 | 0 | 1 |  |
| investor-update | 4 | 0 | 0 |  |
| negotiation-email | 4 | 0 | 0 |  |
| open-letter | 4 | 0 | 0 |  |
| promotion-case | 4 | 0 | 0 |  |
| public-comment-speech | 3 | 1 | 0 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 4 | 0 | 0 |  |
| staff-announcement | 4 | 0 | 0 |  |
| win-back-email | 4 | 0 | 0 |  |

## Judge: fable

Pairs 48. With skill: wins 48, ties 0, losses 0.
Win rate (tie = half a win) 1, Wilson 95% lower bound 0.926.
Clear wins 46 of 48 (share 0.958).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 4 | 0 | 0 |  |
| investor-update | 4 | 0 | 0 |  |
| negotiation-email | 4 | 0 | 0 |  |
| open-letter | 4 | 0 | 0 |  |
| promotion-case | 4 | 0 | 0 |  |
| public-comment-speech | 4 | 0 | 0 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 4 | 0 | 0 |  |
| staff-announcement | 4 | 0 | 0 |  |
| win-back-email | 4 | 0 | 0 |  |

## Judge agreement

Same pair verdict: 46 of 48 pairs (0.958).
Not opposite arms: 47 of 48 pairs (0.979).
opus and fable: same pair verdict 48 of 48 pairs (1), not opposite arms 48 of 48 pairs (1).
gemini and fable: same pair verdict 46 of 48 pairs (0.958), not opposite arms 47 of 48 pairs (0.979).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 48 | 1.188 | 18 |
| without-skill | 48 | 2.167 | 28 |

## Conditions

Condition 2: PASS
  opus: PASS: win rate 1 (needs >= 0.75), lower bound 0.926 (needs > 0.60), types with more losses than wins: none
  gemini: PASS: win rate 0.969 (needs >= 0.75), lower bound 0.875 (needs > 0.60), types with more losses than wins: none
  fable: PASS: win rate 1 (needs >= 0.75), lower bound 0.926 (needs > 0.60), types with more losses than wins: none
Condition 3: PASS
  opus: PASS: 46 of 48 wins are clear (0.958, needs >= 0.5)
  gemini: PASS: 44 of 46 wins are clear (0.957, needs >= 0.5)
  fable: PASS: 46 of 48 wins are clear (0.958, needs >= 0.5)
Condition 4: PASS: same pair verdict on 46 of 48 pairs (0.958, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 1.188, without skill 2.167 (with must not be above without)
