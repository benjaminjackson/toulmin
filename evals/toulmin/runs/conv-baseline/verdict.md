## Judge: opus

Pairs 34. With skill: wins 24, ties 6, losses 4.
Win rate (tie = half a win) 0.794, Wilson 95% lower bound 0.632.
Clear wins 17 of 24 (share 0.708).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 0 | 0 |  |
| crowdfunding-pitch | 2 | 0 | 1 |  |
| grant-proposal | 3 | 0 | 0 |  |
| investor-update | 0 | 0 | 1 | YES |
| negotiation-email | 2 | 0 | 1 |  |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 3 | 0 | 0 |  |
| public-comment-speech | 2 | 1 | 0 |  |
| recommendation-letter | 1 | 2 | 0 |  |
| sales-page | 0 | 2 | 1 | YES |
| staff-announcement | 3 | 0 | 0 |  |
| win-back-email | 2 | 1 | 0 |  |

## Judge: gemini

Pairs 34. With skill: wins 23, ties 1, losses 10.
Win rate (tie = half a win) 0.691, Wilson 95% lower bound 0.523.
Clear wins 16 of 23 (share 0.696).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 0 | 0 |  |
| crowdfunding-pitch | 2 | 0 | 1 |  |
| grant-proposal | 3 | 0 | 0 |  |
| investor-update | 0 | 1 | 0 |  |
| negotiation-email | 0 | 0 | 3 | YES |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 3 | 0 | 0 |  |
| public-comment-speech | 1 | 0 | 2 | YES |
| recommendation-letter | 2 | 0 | 1 |  |
| sales-page | 1 | 0 | 2 | YES |
| staff-announcement | 3 | 0 | 0 |  |
| win-back-email | 2 | 0 | 1 |  |

## Judge agreement

Same pair verdict: 24 of 34 pairs (0.706).
Not opposite arms: 31 of 34 pairs (0.912).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 34 | 2.5 | 21 |
| without-skill | 36 | 3.306 | 31 |

## Conditions

Condition 2: FAIL
  opus: FAIL: win rate 0.794 (needs >= 0.75), lower bound 0.632 (needs > 0.60), types with more losses than wins: investor-update, sales-page
  gemini: FAIL: win rate 0.691 (needs >= 0.75), lower bound 0.523 (needs > 0.60), types with more losses than wins: negotiation-email, public-comment-speech, sales-page
Condition 3: PASS
  opus: PASS: 17 of 24 wins are clear (0.708, needs >= 0.5)
  gemini: PASS: 16 of 23 wins are clear (0.696, needs >= 0.5)
Condition 4: FAIL: same pair verdict on 24 of 34 pairs (0.706, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 2.5, without skill 3.306 (with must not be above without)
