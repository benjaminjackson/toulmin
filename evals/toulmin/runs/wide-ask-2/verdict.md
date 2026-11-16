## Judge: opus

Pairs 36. With skill: wins 21, ties 7, losses 8.
Win rate (tie = half a win) 0.681, Wilson 95% lower bound 0.517.
Clear wins 5 of 21 (share 0.238).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 0 | 0 |  |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 0 | 1 | 2 | YES |
| investor-update | 1 | 1 | 1 |  |
| negotiation-email | 2 | 1 | 0 |  |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 3 | 0 | 0 |  |
| public-comment-speech | 2 | 1 | 0 |  |
| recommendation-letter | 1 | 2 | 0 |  |
| sales-page | 1 | 0 | 2 | YES |
| staff-announcement | 1 | 1 | 1 |  |
| win-back-email | 1 | 0 | 2 | YES |

## Judge: gemini

Pairs 36. With skill: wins 17, ties 6, losses 13.
Win rate (tie = half a win) 0.556, Wilson 95% lower bound 0.396.
Clear wins 9 of 17 (share 0.529).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 2 | 0 | 1 |  |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 2 | 1 | 0 |  |
| investor-update | 1 | 0 | 2 | YES |
| negotiation-email | 0 | 0 | 3 | YES |
| open-letter | 2 | 1 | 0 |  |
| promotion-case | 3 | 0 | 0 |  |
| public-comment-speech | 2 | 1 | 0 |  |
| recommendation-letter | 0 | 2 | 1 | YES |
| sales-page | 0 | 0 | 3 | YES |
| staff-announcement | 0 | 1 | 2 | YES |
| win-back-email | 2 | 0 | 1 |  |

## Judge agreement

Same pair verdict: 21 of 36 pairs (0.583).
Not opposite arms: 30 of 36 pairs (0.833).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 36 | 2.083 | 23 |
| without-skill | 36 | 3.722 | 29 |

## Conditions

Condition 2: FAIL
  opus: FAIL: win rate 0.681 (needs >= 0.75), lower bound 0.517 (needs > 0.60), types with more losses than wins: grant-proposal, sales-page, win-back-email
  gemini: FAIL: win rate 0.556 (needs >= 0.75), lower bound 0.396 (needs > 0.60), types with more losses than wins: investor-update, negotiation-email, recommendation-letter, sales-page, staff-announcement
Condition 3: FAIL
  opus: FAIL: 5 of 21 wins are clear (0.238, needs >= 0.5)
  gemini: PASS: 9 of 17 wins are clear (0.529, needs >= 0.5)
Condition 4: FAIL: same pair verdict on 21 of 36 pairs (0.583, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 2.083, without skill 3.722 (with must not be above without)
