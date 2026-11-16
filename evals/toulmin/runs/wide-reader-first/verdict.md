## Judge: opus

Pairs 36. With skill: wins 27, ties 6, losses 3.
Win rate (tie = half a win) 0.833, Wilson 95% lower bound 0.681.
Clear wins 12 of 27 (share 0.444).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 0 | 0 |  |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 2 | 1 | 0 |  |
| investor-update | 2 | 1 | 0 |  |
| negotiation-email | 3 | 0 | 0 |  |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 3 | 0 | 0 |  |
| public-comment-speech | 2 | 1 | 0 |  |
| recommendation-letter | 3 | 0 | 0 |  |
| sales-page | 0 | 1 | 2 | YES |
| staff-announcement | 2 | 1 | 0 |  |
| win-back-email | 1 | 1 | 1 |  |

## Judge: gemini

Pairs 36. With skill: wins 15, ties 9, losses 12.
Win rate (tie = half a win) 0.542, Wilson 95% lower bound 0.383.
Clear wins 5 of 15 (share 0.333).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 0 | 1 | 2 | YES |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 0 | 2 | 1 | YES |
| investor-update | 0 | 1 | 2 | YES |
| negotiation-email | 0 | 2 | 1 | YES |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 1 | 0 | 2 | YES |
| public-comment-speech | 2 | 1 | 0 |  |
| recommendation-letter | 3 | 0 | 0 |  |
| sales-page | 0 | 1 | 2 | YES |
| staff-announcement | 1 | 1 | 1 |  |
| win-back-email | 2 | 0 | 1 |  |

## Judge agreement

Same pair verdict: 16 of 36 pairs (0.444).
Not opposite arms: 29 of 36 pairs (0.806).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 36 | 3.556 | 28 |
| without-skill | 36 | 4.028 | 29 |

## Conditions

Condition 2: FAIL
  opus: FAIL: win rate 0.833 (needs >= 0.75), lower bound 0.681 (needs > 0.60), types with more losses than wins: sales-page
  gemini: FAIL: win rate 0.542 (needs >= 0.75), lower bound 0.383 (needs > 0.60), types with more losses than wins: cover-letter, grant-proposal, investor-update, negotiation-email, promotion-case, sales-page
Condition 3: FAIL
  opus: FAIL: 12 of 27 wins are clear (0.444, needs >= 0.5)
  gemini: FAIL: 5 of 15 wins are clear (0.333, needs >= 0.5)
Condition 4: FAIL: same pair verdict on 16 of 36 pairs (0.444, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 3.556, without skill 4.028 (with must not be above without)
