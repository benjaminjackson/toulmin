## Judge: opus

Pairs 48. With skill: wins 28, ties 10, losses 10.
Win rate (tie = half a win) 0.688, Wilson 95% lower bound 0.547.
Clear wins 8 of 28 (share 0.286).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 2 | 2 | 0 |  |
| crowdfunding-pitch | 3 | 0 | 1 |  |
| grant-proposal | 3 | 1 | 0 |  |
| investor-update | 1 | 2 | 1 |  |
| negotiation-email | 3 | 0 | 1 |  |
| open-letter | 4 | 0 | 0 |  |
| promotion-case | 1 | 1 | 2 | YES |
| public-comment-speech | 1 | 1 | 2 | YES |
| recommendation-letter | 3 | 0 | 1 |  |
| sales-page | 3 | 1 | 0 |  |
| staff-announcement | 0 | 2 | 2 | YES |
| win-back-email | 4 | 0 | 0 |  |

## Judge: gemini

Pairs 48. With skill: wins 23, ties 9, losses 16.
Win rate (tie = half a win) 0.573, Wilson 95% lower bound 0.433.
Clear wins 12 of 23 (share 0.522).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 2 | 2 | 0 |  |
| crowdfunding-pitch | 3 | 1 | 0 |  |
| grant-proposal | 1 | 0 | 3 | YES |
| investor-update | 1 | 1 | 2 | YES |
| negotiation-email | 2 | 0 | 2 |  |
| open-letter | 2 | 1 | 1 |  |
| promotion-case | 3 | 0 | 1 |  |
| public-comment-speech | 1 | 1 | 2 | YES |
| recommendation-letter | 2 | 2 | 0 |  |
| sales-page | 2 | 1 | 1 |  |
| staff-announcement | 0 | 0 | 4 | YES |
| win-back-email | 4 | 0 | 0 |  |

## Judge: fable

Pairs 48. With skill: wins 27, ties 11, losses 10.
Win rate (tie = half a win) 0.677, Wilson 95% lower bound 0.536.
Clear wins 9 of 27 (share 0.333).

| Type | Wins | Ties | Losses | More losses than wins |
|---|---|---|---|---|
| cover-letter | 1 | 3 | 0 |  |
| crowdfunding-pitch | 4 | 0 | 0 |  |
| grant-proposal | 3 | 0 | 1 |  |
| investor-update | 1 | 2 | 1 |  |
| negotiation-email | 1 | 3 | 0 |  |
| open-letter | 4 | 0 | 0 |  |
| promotion-case | 1 | 2 | 1 |  |
| public-comment-speech | 2 | 0 | 2 |  |
| recommendation-letter | 3 | 0 | 1 |  |
| sales-page | 3 | 0 | 1 |  |
| staff-announcement | 0 | 1 | 3 | YES |
| win-back-email | 4 | 0 | 0 |  |

## Judge agreement

Same pair verdict: 29 of 48 pairs (0.604).
Not opposite arms: 40 of 48 pairs (0.833).
opus and fable: same pair verdict 37 of 48 pairs (0.771), not opposite arms 46 of 48 pairs (0.958).
gemini and fable: same pair verdict 31 of 48 pairs (0.646), not opposite arms 45 of 48 pairs (0.938).

## Invented facts

| Arm | Documents | Mean invented count | Documents with at least one |
|---|---|---|---|
| with-skill | 48 | 1.417 | 20 |
| without-skill | 48 | 1.604 | 21 |

## Conditions

Condition 2: FAIL
  opus: FAIL: win rate 0.688 (needs >= 0.75), lower bound 0.547 (needs > 0.60), types with more losses than wins: promotion-case, public-comment-speech, staff-announcement
  gemini: FAIL: win rate 0.573 (needs >= 0.75), lower bound 0.433 (needs > 0.60), types with more losses than wins: grant-proposal, investor-update, public-comment-speech, staff-announcement
  fable: FAIL: win rate 0.677 (needs >= 0.75), lower bound 0.536 (needs > 0.60), types with more losses than wins: staff-announcement
Condition 3: FAIL
  opus: FAIL: 8 of 28 wins are clear (0.286, needs >= 0.5)
  gemini: PASS: 12 of 23 wins are clear (0.522, needs >= 0.5)
  fable: FAIL: 9 of 27 wins are clear (0.333, needs >= 0.5)
Condition 4: FAIL: same pair verdict on 29 of 48 pairs (0.604, needs >= 0.8)
Condition 5: PASS: mean invented facts with skill 1.417, without skill 1.604 (with must not be above without)
