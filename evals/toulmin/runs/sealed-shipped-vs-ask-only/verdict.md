## Judge: opus

Pairs 48. With skill: wins 40, ties 2, losses 6.
Win rate (tie = half a win) 0.854, Wilson 95% lower bound 0.728.
Clear wins 21 of 40 (share 0.525).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 2 | 0 | 2 |  |
| investor-update | 4 | 0 | 0 |  |
| negotiation-email | 3 | 1 | 0 |  |
| open-letter | 3 | 0 | 1 |  |
| promotion-case | 4 | 0 | 0 |  |
| public-comment-speech | 3 | 0 | 1 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 3 | 0 | 1 |  |
| staff-announcement | 2 | 1 | 1 |  |
| win-back-email | 4 | 0 | 0 |  |

## Judge: gemini

Pairs 21. With skill: wins 17, ties 4, losses 0.
Win rate (tie = half a win) 0.905, Wilson 95% lower bound 0.711.
Clear wins 7 of 17 (share 0.412).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| open-letter | 2 | 0 | 0 |  |
| promotion-case | 1 | 1 | 0 |  |
| public-comment-speech | 2 | 0 | 0 |  |
| recommendation-letter | 3 | 1 | 0 |  |
| sales-page | 3 | 1 | 0 |  |
| staff-announcement | 2 | 1 | 0 |  |
| win-back-email | 4 | 0 | 0 |  |

## Judge: fable

Pairs 48. With skill: wins 41, ties 3, losses 4.
Win rate (tie = half a win) 0.885, Wilson 95% lower bound 0.766.
Clear wins 20 of 41 (share 0.488).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 2 | 1 | 1 |  |
| investor-update | 4 | 0 | 0 |  |
| negotiation-email | 3 | 1 | 0 |  |
| open-letter | 3 | 1 | 0 |  |
| promotion-case | 4 | 0 | 0 |  |
| public-comment-speech | 3 | 0 | 1 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 4 | 0 | 0 |  |
| staff-announcement | 2 | 0 | 2 |  |
| win-back-email | 4 | 0 | 0 |  |

## Judge agreement

Same pair verdict: 16 of 21 pairs (0.762).
Not opposite arms: 21 of 21 pairs (1).
opus and fable: same pair verdict 44 of 48 pairs (0.917), not opposite arms 47 of 48 pairs (0.979).
gemini and fable: same pair verdict 16 of 21 pairs (0.762), not opposite arms 20 of 21 pairs (0.952).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 31 | 1.419 | 12 |
| without-skill | 29 | 2 | 18 |

## Conditions

Condition 2: PASS
  opus: PASS: win rate 0.854 (needs >= 0.75), lower bound 0.728 (needs > 0.60), types with more losses than wins: none
  gemini: PASS: win rate 0.905 (needs >= 0.75), lower bound 0.711 (needs > 0.60), types with more losses than wins: none
  fable: PASS: win rate 0.885 (needs >= 0.75), lower bound 0.766 (needs > 0.60), types with more losses than wins: none
Condition 3: FAIL
  opus: PASS: 21 of 40 wins are clear (0.525, needs >= 0.5)
  gemini: FAIL: 7 of 17 wins are clear (0.412, needs >= 0.5)
  fable: FAIL: 20 of 41 wins are clear (0.488, needs >= 0.5)
Condition 4: FAIL: same pair verdict on 16 of 21 pairs (0.762, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 1.419, without skill 2 (with must not be above without)
