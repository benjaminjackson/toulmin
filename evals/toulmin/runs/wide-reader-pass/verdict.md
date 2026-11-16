## Judge: opus

Pairs 36. With skill: wins 24, ties 9, losses 3.
Win rate (tie = half a win) 0.792, Wilson 95% lower bound 0.634.
Clear wins 10 of 24 (share 0.417).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 0 | 0 |  |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 2 | 1 | 0 |  |
| investor-update | 2 | 1 | 0 |  |
| negotiation-email | 1 | 1 | 1 |  |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 2 | 1 | 0 |  |
| public-comment-speech | 3 | 0 | 0 |  |
| recommendation-letter | 1 | 2 | 0 |  |
| sales-page | 0 | 2 | 1 | YES |
| staff-announcement | 2 | 1 | 0 |  |
| win-back-email | 2 | 0 | 1 |  |

## Judge: gemini

Pairs 36. With skill: wins 17, ties 10, losses 9.
Win rate (tie = half a win) 0.611, Wilson 95% lower bound 0.449.
Clear wins 8 of 17 (share 0.471).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 0 | 2 | 1 | YES |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 1 | 0 | 2 | YES |
| investor-update | 2 | 1 | 0 |  |
| negotiation-email | 0 | 0 | 3 | YES |
| open-letter | 2 | 1 | 0 |  |
| promotion-case | 3 | 0 | 0 |  |
| public-comment-speech | 2 | 1 | 0 |  |
| recommendation-letter | 1 | 2 | 0 |  |
| sales-page | 0 | 3 | 0 |  |
| staff-announcement | 1 | 0 | 2 | YES |
| win-back-email | 2 | 0 | 1 |  |

## Judge agreement

Same pair verdict: 21 of 36 pairs (0.583).
Not opposite arms: 30 of 36 pairs (0.833).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 36 | 2.667 | 28 |
| without-skill | 36 | 4.083 | 29 |

## Conditions

Condition 2: FAIL
  opus: FAIL: win rate 0.792 (needs >= 0.75), lower bound 0.634 (needs > 0.60), types with more losses than wins: sales-page
  gemini: FAIL: win rate 0.611 (needs >= 0.75), lower bound 0.449 (needs > 0.60), types with more losses than wins: cover-letter, grant-proposal, negotiation-email, staff-announcement
Condition 3: FAIL
  opus: FAIL: 10 of 24 wins are clear (0.417, needs >= 0.5)
  gemini: FAIL: 8 of 17 wins are clear (0.471, needs >= 0.5)
Condition 4: FAIL: same pair verdict on 21 of 36 pairs (0.583, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 2.667, without skill 4.083 (with must not be above without)
