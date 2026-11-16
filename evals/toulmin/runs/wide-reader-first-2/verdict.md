## Judge: opus

Pairs 36. With skill: wins 19, ties 8, losses 9.
Win rate (tie = half a win) 0.639, Wilson 95% lower bound 0.476.
Clear wins 2 of 19 (share 0.105).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 2 | 1 | 0 |  |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 1 | 0 | 2 | YES |
| investor-update | 1 | 1 | 1 |  |
| negotiation-email | 2 | 1 | 0 |  |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 0 | 1 | 2 | YES |
| public-comment-speech | 1 | 2 | 0 |  |
| recommendation-letter | 2 | 1 | 0 |  |
| sales-page | 0 | 1 | 2 | YES |
| staff-announcement | 3 | 0 | 0 |  |
| win-back-email | 1 | 0 | 2 | YES |

## Judge: gemini

Pairs 36. With skill: wins 20, ties 9, losses 7.
Win rate (tie = half a win) 0.681, Wilson 95% lower bound 0.517.
Clear wins 10 of 20 (share 0.5).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 1 | 1 | 1 |  |
| crowdfunding-pitch | 2 | 1 | 0 |  |
| grant-proposal | 3 | 0 | 0 |  |
| investor-update | 0 | 2 | 1 | YES |
| negotiation-email | 1 | 0 | 2 | YES |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 1 | 2 | 0 |  |
| public-comment-speech | 2 | 1 | 0 |  |
| recommendation-letter | 2 | 0 | 1 |  |
| sales-page | 0 | 2 | 1 | YES |
| staff-announcement | 3 | 0 | 0 |  |
| win-back-email | 2 | 0 | 1 |  |

## Judge agreement

Same pair verdict: 19 of 36 pairs (0.528).
Not opposite arms: 32 of 36 pairs (0.889).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 36 | 2.722 | 25 |
| without-skill | 36 | 3.861 | 29 |

## Conditions

Condition 2: FAIL
  opus: FAIL: win rate 0.639 (needs >= 0.75), lower bound 0.476 (needs > 0.60), types with more losses than wins: grant-proposal, promotion-case, sales-page, win-back-email
  gemini: FAIL: win rate 0.681 (needs >= 0.75), lower bound 0.517 (needs > 0.60), types with more losses than wins: investor-update, negotiation-email, sales-page
Condition 3: FAIL
  opus: FAIL: 2 of 19 wins are clear (0.105, needs >= 0.5)
  gemini: PASS: 10 of 20 wins are clear (0.5, needs >= 0.5)
Condition 4: FAIL: same pair verdict on 19 of 36 pairs (0.528, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 2.722, without skill 3.861 (with must not be above without)
