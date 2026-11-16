## Judge: opus

Pairs 48. With skill: wins 45, ties 1, losses 2.
Win rate (tie = half a win) 0.948, Wilson 95% lower bound 0.846.
Clear wins 40 of 45 (share 0.889).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 4 | 0 | 0 |  |
| investor-update | 4 | 0 | 0 |  |
| negotiation-email | 2 | 1 | 1 |  |
| open-letter | 4 | 0 | 0 |  |
| promotion-case | 3 | 0 | 1 |  |
| public-comment-speech | 4 | 0 | 0 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 4 | 0 | 0 |  |
| staff-announcement | 4 | 0 | 0 |  |
| win-back-email | 4 | 0 | 0 |  |

## Judge: gemini

Pairs 48. With skill: wins 45, ties 2, losses 1.
Win rate (tie = half a win) 0.958, Wilson 95% lower bound 0.86.
Clear wins 38 of 45 (share 0.844).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 4 | 0 | 0 |  |
| investor-update | 4 | 0 | 0 |  |
| negotiation-email | 2 | 1 | 1 |  |
| open-letter | 4 | 0 | 0 |  |
| promotion-case | 3 | 1 | 0 |  |
| public-comment-speech | 4 | 0 | 0 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 4 | 0 | 0 |  |
| staff-announcement | 4 | 0 | 0 |  |
| win-back-email | 4 | 0 | 0 |  |

## Judge: fable

Pairs 48. With skill: wins 46, ties 0, losses 2.
Win rate (tie = half a win) 0.958, Wilson 95% lower bound 0.86.
Clear wins 40 of 46 (share 0.87).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 4 | 0 | 0 |  |
| investor-update | 4 | 0 | 0 |  |
| negotiation-email | 3 | 0 | 1 |  |
| open-letter | 4 | 0 | 0 |  |
| promotion-case | 3 | 0 | 1 |  |
| public-comment-speech | 4 | 0 | 0 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 4 | 0 | 0 |  |
| staff-announcement | 4 | 0 | 0 |  |
| win-back-email | 4 | 0 | 0 |  |

## Judge agreement

Same pair verdict: 45 of 48 pairs (0.938).
Not opposite arms: 48 of 48 pairs (1).
opus and fable: same pair verdict 47 of 48 pairs (0.979), not opposite arms 48 of 48 pairs (1).
gemini and fable: same pair verdict 45 of 48 pairs (0.938), not opposite arms 47 of 48 pairs (0.979).

## Conditions

Condition 2: PASS
  opus: PASS: win rate 0.948 (needs >= 0.75), lower bound 0.846 (needs > 0.60), types with more losses than wins: none
  gemini: PASS: win rate 0.958 (needs >= 0.75), lower bound 0.86 (needs > 0.60), types with more losses than wins: none
  fable: PASS: win rate 0.958 (needs >= 0.75), lower bound 0.86 (needs > 0.60), types with more losses than wins: none
Condition 3: PASS
  opus: PASS: 40 of 45 wins are clear (0.889, needs >= 0.5)
  gemini: PASS: 38 of 45 wins are clear (0.844, needs >= 0.5)
  fable: PASS: 40 of 46 wins are clear (0.87, needs >= 0.5)
Condition 4: PASS: same pair verdict on 45 of 48 pairs (0.938, needs >= 0.8)
Condition 5: NOT TESTED: no factcheck results for both arms
