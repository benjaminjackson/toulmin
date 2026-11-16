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

Pairs 48. With skill: wins 38, ties 7, losses 3.
Win rate (tie = half a win) 0.865, Wilson 95% lower bound 0.741.
Clear wins 22 of 38 (share 0.579).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 1 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 2 | 1 | 1 |  |
| investor-update | 3 | 1 | 0 |  |
| negotiation-email | 3 | 1 | 0 |  |
| open-letter | 3 | 1 | 0 |  |
| promotion-case | 4 | 0 | 0 |  |
| public-comment-speech | 3 | 0 | 1 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 3 | 1 | 0 |  |
| staff-announcement | 2 | 1 | 1 |  |
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

Same pair verdict: 40 of 48 pairs (0.833).
Not opposite arms: 47 of 48 pairs (0.979).
opus and fable: same pair verdict 44 of 48 pairs (0.917), not opposite arms 47 of 48 pairs (0.979).
gemini and fable: same pair verdict 41 of 48 pairs (0.854), not opposite arms 47 of 48 pairs (0.979).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 48 | 1.417 | 21 |
| without-skill | 48 | 1.938 | 31 |

## Conditions

Condition 2: PASS
  opus: PASS: win rate 0.854 (needs >= 0.75), lower bound 0.728 (needs > 0.60), types with more losses than wins: none
  gemini: PASS: win rate 0.865 (needs >= 0.75), lower bound 0.741 (needs > 0.60), types with more losses than wins: none
  fable: PASS: win rate 0.885 (needs >= 0.75), lower bound 0.766 (needs > 0.60), types with more losses than wins: none
Condition 3: FAIL
  opus: PASS: 21 of 40 wins are clear (0.525, needs >= 0.5)
  gemini: PASS: 22 of 38 wins are clear (0.579, needs >= 0.5)
  fable: FAIL: 20 of 41 wins are clear (0.488, needs >= 0.5)
Condition 4: PASS: same pair verdict on 40 of 48 pairs (0.833, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 1.417, without skill 1.938 (with must not be above without)
