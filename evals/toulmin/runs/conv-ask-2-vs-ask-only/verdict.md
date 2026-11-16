## Judge: opus

Pairs 36. With skill: wins 26, ties 4, losses 6.
Win rate (tie = half a win) 0.778, Wilson 95% lower bound 0.619.
Clear wins 18 of 26 (share 0.692).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 0 | 0 |  |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 3 | 0 | 0 |  |
| investor-update | 3 | 0 | 0 |  |
| negotiation-email | 2 | 0 | 1 |  |
| open-letter | 0 | 1 | 2 | YES |
| promotion-case | 2 | 1 | 0 |  |
| public-comment-speech | 3 | 0 | 0 |  |
| recommendation-letter | 3 | 0 | 0 |  |
| sales-page | 3 | 0 | 0 |  |
| staff-announcement | 1 | 1 | 1 |  |
| win-back-email | 0 | 1 | 2 | YES |

## Judge: gemini

Pairs 36. With skill: wins 21, ties 5, losses 10.
Win rate (tie = half a win) 0.653, Wilson 95% lower bound 0.489.
Clear wins 15 of 21 (share 0.714).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 0 | 2 | 1 | YES |
| crowdfunding-pitch | 2 | 1 | 0 |  |
| grant-proposal | 3 | 0 | 0 |  |
| investor-update | 2 | 0 | 1 |  |
| negotiation-email | 2 | 0 | 1 |  |
| open-letter | 0 | 1 | 2 | YES |
| promotion-case | 3 | 0 | 0 |  |
| public-comment-speech | 3 | 0 | 0 |  |
| recommendation-letter | 2 | 1 | 0 |  |
| sales-page | 2 | 0 | 1 |  |
| staff-announcement | 1 | 0 | 2 | YES |
| win-back-email | 1 | 0 | 2 | YES |

## Judge agreement

Same pair verdict: 24 of 36 pairs (0.667).
Not opposite arms: 33 of 36 pairs (0.917).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 36 | 2.194 | 24 |
| without-skill | 36 | 2 | 22 |

## Conditions

Condition 2: FAIL
  opus: FAIL: win rate 0.778 (needs >= 0.75), lower bound 0.619 (needs > 0.60), types with more losses than wins: open-letter, win-back-email
  gemini: FAIL: win rate 0.653 (needs >= 0.75), lower bound 0.489 (needs > 0.60), types with more losses than wins: cover-letter, open-letter, staff-announcement, win-back-email
Condition 3: PASS
  opus: PASS: 18 of 26 wins are clear (0.692, needs >= 0.5)
  gemini: PASS: 15 of 21 wins are clear (0.714, needs >= 0.5)
Condition 4: FAIL: same pair verdict on 24 of 36 pairs (0.667, needs >= 0.8)
Condition 5: FAIL: mean invented facts with skill 2.194, without skill 2 (with must not be above without)
