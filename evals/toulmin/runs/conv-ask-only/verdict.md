## Judge: opus

Pairs 36. With skill: wins 35, ties 1, losses 0.
Win rate (tie = half a win) 0.986, Wilson 95% lower bound 0.88.
Clear wins 33 of 35 (share 0.943).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 0 | 0 |  |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 3 | 0 | 0 |  |
| investor-update | 3 | 0 | 0 |  |
| negotiation-email | 3 | 0 | 0 |  |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 3 | 0 | 0 |  |
| public-comment-speech | 3 | 0 | 0 |  |
| recommendation-letter | 3 | 0 | 0 |  |
| sales-page | 2 | 1 | 0 |  |
| staff-announcement | 3 | 0 | 0 |  |
| win-back-email | 3 | 0 | 0 |  |

## Judge: gemini

Pairs 36. With skill: wins 35, ties 1, losses 0.
Win rate (tie = half a win) 0.986, Wilson 95% lower bound 0.88.
Clear wins 31 of 35 (share 0.886).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 3 | 0 | 0 |  |
| crowdfunding-pitch | 3 | 0 | 0 |  |
| grant-proposal | 3 | 0 | 0 |  |
| investor-update | 3 | 0 | 0 |  |
| negotiation-email | 3 | 0 | 0 |  |
| open-letter | 3 | 0 | 0 |  |
| promotion-case | 3 | 0 | 0 |  |
| public-comment-speech | 3 | 0 | 0 |  |
| recommendation-letter | 3 | 0 | 0 |  |
| sales-page | 2 | 1 | 0 |  |
| staff-announcement | 3 | 0 | 0 |  |
| win-back-email | 3 | 0 | 0 |  |

## Judge agreement

Same pair verdict: 36 of 36 pairs (1).
Not opposite arms: 36 of 36 pairs (1).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 36 | 1.778 | 20 |
| without-skill | 36 | 3.361 | 29 |

## Conditions

Condition 2: PASS
  opus: PASS: win rate 0.986 (needs >= 0.75), lower bound 0.88 (needs > 0.60), types with more losses than wins: none
  gemini: PASS: win rate 0.986 (needs >= 0.75), lower bound 0.88 (needs > 0.60), types with more losses than wins: none
Condition 3: PASS
  opus: PASS: 33 of 35 wins are clear (0.943, needs >= 0.5)
  gemini: PASS: 31 of 35 wins are clear (0.886, needs >= 0.5)
Condition 4: PASS: same pair verdict on 36 of 36 pairs (1, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 1.778, without skill 3.361 (with must not be above without)
