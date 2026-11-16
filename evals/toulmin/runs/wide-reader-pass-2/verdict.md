## Judge: opus

Pairs 36. With skill: wins 13, ties 9, losses 14.
Win rate (tie = half a win) 0.486, Wilson 95% lower bound 0.332.
Clear wins 3 of 13 (share 0.231).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 2 | 0 | 1 |  |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 0 | 0 | 3 | YES |
| investor-update | 0 | 2 | 1 | YES |
| negotiation-email | 1 | 2 | 0 |  |
| open-letter | 2 | 1 | 0 |  |
| promotion-case | 0 | 1 | 2 | YES |
| public-comment-speech | 2 | 1 | 0 |  |
| recommendation-letter | 1 | 2 | 0 |  |
| sales-page | 0 | 0 | 3 | YES |
| staff-announcement | 1 | 0 | 2 | YES |
| win-back-email | 1 | 0 | 2 | YES |

## Judge: gemini

Pairs 36. With skill: wins 19, ties 11, losses 6.
Win rate (tie = half a win) 0.681, Wilson 95% lower bound 0.517.
Clear wins 10 of 19 (share 0.526).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 1 | 1 | 1 |  |
| crowdfunding-pitch | 2 | 1 | 0 |  |
| grant-proposal | 2 | 0 | 1 |  |
| investor-update | 1 | 1 | 1 |  |
| negotiation-email | 0 | 3 | 0 |  |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 2 | 1 | 0 |  |
| public-comment-speech | 2 | 1 | 0 |  |
| recommendation-letter | 1 | 2 | 0 |  |
| sales-page | 1 | 1 | 1 |  |
| staff-announcement | 3 | 0 | 0 |  |
| win-back-email | 1 | 0 | 2 | YES |

## Judge agreement

Same pair verdict: 22 of 36 pairs (0.611).
Not opposite arms: 30 of 36 pairs (0.833).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 36 | 2.306 | 26 |
| without-skill | 36 | 4.083 | 29 |

## Conditions

Condition 2: FAIL
  opus: FAIL: win rate 0.486 (needs >= 0.75), lower bound 0.332 (needs > 0.60), types with more losses than wins: grant-proposal, investor-update, promotion-case, sales-page, staff-announcement, win-back-email
  gemini: FAIL: win rate 0.681 (needs >= 0.75), lower bound 0.517 (needs > 0.60), types with more losses than wins: win-back-email
Condition 3: FAIL
  opus: FAIL: 3 of 13 wins are clear (0.231, needs >= 0.5)
  gemini: PASS: 10 of 19 wins are clear (0.526, needs >= 0.5)
Condition 4: FAIL: same pair verdict on 22 of 36 pairs (0.611, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 2.306, without skill 4.083 (with must not be above without)
