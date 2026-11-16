## Judge: opus

Pairs 48. With skill: wins 40, ties 3, losses 5.
Win rate (tie = half a win) 0.865, Wilson 95% lower bound 0.741.
Clear wins 21 of 40 (share 0.525).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 4 | 0 | 0 |  |
| investor-update | 2 | 1 | 1 |  |
| negotiation-email | 4 | 0 | 0 |  |
| open-letter | 2 | 1 | 1 |  |
| promotion-case | 4 | 0 | 0 |  |
| public-comment-speech | 4 | 0 | 0 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 3 | 0 | 1 |  |
| staff-announcement | 3 | 0 | 1 |  |
| win-back-email | 2 | 1 | 1 |  |

## Judge: gemini

Pairs 48. With skill: wins 37, ties 5, losses 6.
Win rate (tie = half a win) 0.823, Wilson 95% lower bound 0.692.
Clear wins 22 of 37 (share 0.595).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 1 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 3 | 0 | 1 |  |
| investor-update | 4 | 0 | 0 |  |
| negotiation-email | 3 | 0 | 1 |  |
| open-letter | 2 | 1 | 1 |  |
| promotion-case | 3 | 1 | 0 |  |
| public-comment-speech | 4 | 0 | 0 |  |
| recommendation-letter | 3 | 1 | 0 |  |
| sales-page | 3 | 0 | 1 |  |
| staff-announcement | 3 | 0 | 1 |  |
| win-back-email | 2 | 1 | 1 |  |

## Judge: fable

Pairs 48. With skill: wins 38, ties 4, losses 6.
Win rate (tie = half a win) 0.833, Wilson 95% lower bound 0.704.
Clear wins 19 of 38 (share 0.5).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 4 | 0 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 3 | 1 | 0 |  |
| investor-update | 3 | 0 | 1 |  |
| negotiation-email | 3 | 1 | 0 |  |
| open-letter | 2 | 0 | 2 |  |
| promotion-case | 4 | 0 | 0 |  |
| public-comment-speech | 4 | 0 | 0 |  |
| recommendation-letter | 4 | 0 | 0 |  |
| sales-page | 3 | 0 | 1 |  |
| staff-announcement | 2 | 1 | 1 |  |
| win-back-email | 2 | 1 | 1 |  |

## Judge agreement

Same pair verdict: 41 of 48 pairs (0.854).
Not opposite arms: 45 of 48 pairs (0.938).
opus and fable: same pair verdict 43 of 48 pairs (0.896), not opposite arms 48 of 48 pairs (1).
gemini and fable: same pair verdict 40 of 48 pairs (0.833), not opposite arms 47 of 48 pairs (0.979).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 48 | 1.167 | 19 |
| without-skill | 48 | 1.792 | 31 |

## Conditions

Condition 2: PASS
  opus: PASS: win rate 0.865 (needs >= 0.75), lower bound 0.741 (needs > 0.60), types with more losses than wins: none
  gemini: PASS: win rate 0.823 (needs >= 0.75), lower bound 0.692 (needs > 0.60), types with more losses than wins: none
  fable: PASS: win rate 0.833 (needs >= 0.75), lower bound 0.704 (needs > 0.60), types with more losses than wins: none
Condition 3: PASS
  opus: PASS: 21 of 40 wins are clear (0.525, needs >= 0.5)
  gemini: PASS: 22 of 37 wins are clear (0.595, needs >= 0.5)
  fable: PASS: 19 of 38 wins are clear (0.5, needs >= 0.5)
Condition 4: PASS: same pair verdict on 41 of 48 pairs (0.854, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 1.167, without skill 1.792 (with must not be above without)
