# Systems

> **Part of:** [GDD](../04-gdd.md) (#4) · **Status:** Draft for review · **Last updated:** 28 Oct 2026
>
> **Question this doc answers:** what numbers run underneath Penrose (the rose, the hidden stats, masks, resistance), how do they change, and what do they control?
>
> **Legend:** **[Decided]** owner's direction · **[Proposed]** recommendation, needs sign-off · **[Open]** needs a decision. All numbers are starting values for tuning in playtests.

---

## 1. Overview

| System | Visible? | Range | Controls |
| --- | --- | --- | --- |
| **The Rose** (Authenticity) | Yes, in the Bathroom | 12 petals → 0 | Endings; Bad ending at 0 |
| **Self-Perception** | Indirectly (how distorted the mirror is) | 0–10 | Mirror distortion; ending summary |
| **Exhaustion** | Indirectly (protagonist's posture, slower walk) | 0–10 | Undo window length; how hard it is to refuse |
| **Masks** | Yes, worn in each room | 0–3 pieces per room | Auto-answers when complete |
| **Resistance** | No | 0 → 8 | Opens the Good / Special ending path |
| **Room loudness** | Indirectly | Quiet · Normal · Loud | Offers per visit, how personal the lines are ([rooms](rooms.md)) |

---

## 2. The Rose = Authenticity [Proposed]

The concept doc's hidden "Authenticity" stat (how much of the real protagonist is left) and the rose in the glass case are the same thing. **The rose is Authenticity made visible.**

| Event | Petals |
| --- | --- |
| Start | 12 (11 if quiz Q6 = "No") |
| Each upgrade locked in | −1 |
| Last two petals | Protected until Loop 3, so every player sees the reveal ([loop & decay §5](loop-and-decay.md)) |
| 0 petals | **Bad ending** |
| Special ending | Petals slowly regrow **[Decided]** |

**Tuning check:** a player who accepts every offer loses about 4 petals in Loop 1 and 6 in Loop 2, so they reach the Bad ending early in Loop 3, after the reveal. A player who refuses about half the offers reaches Loop 4.

## 3. Self-Perception [Proposed]

How the protagonist sees themselves. Starts at the player's own 0–10 rating at the first Bathroom mirror visit ([quiz design §4.4](act0-quiz.md)).

| Event | Change | Why |
| --- | --- | --- |
| Upgrade in Loops 1–2 | +1 | It *feels* like it's working, the trap of the early loops |
| Upgrade in Loop 3+ | −1 | The truth is visible now |
| Extra Bathroom checks (more than one per loop) | −1 each | Mirror checking keeps body-image worry going (Veale, 2004) |
| Kind or neutral response at the mirror | +1 | Mirror exposure with non-judgmental description reduces body-image distress (Delinsky & Wilson, 2006) |

**What it controls:** how distorted the reflection is (low = more distorted), and the before/after shown in the ending summary.

## 4. Exhaustion [Proposed]

Masks are draining **[Decided]**.

| Event | Change |
| --- | --- |
| Upgrade locked in | +1 |
| A room's mask completed | +2 |
| Kind self-talk at the mirror | −1 |

| Exhaustion | Effect |
| --- | --- |
| 0–4 | Undo window ≈ 5 s |
| 5–7 | Undo window ≈ 3 s; the protagonist walks slower |
| 8–10 | Undo window ≈ 2 s; the "refuse" option appears a second later than the others |

The more worn down the protagonist is, the harder it is to stop, without ever making stopping impossible.

## 5. Masks [Decided] concept; numbers [Proposed]

- Each room has one mask, built from **3 pieces**. Each upgrade accepted in that room adds a piece.
- A **complete mask** answers for the protagonist in that room: dialogue is auto-chosen ([loop & decay §5](loop-and-decay.md)).
- Masks are visible on the protagonist in their room, and all at once in the Bathroom mirror from Loop 3.

## 6. Resistance [Proposed]

Counts refused upgrades. The concept doc's "refuse to change" ending: *each loop of resistance weakens the house until the door leads outside.*

| Event | Change |
| --- | --- |
| Upgrade refused | +1 |
| Upgrade undone in the undo window | +1 |

At **Resistance 8** after the Loop 3 reveal, the house weakens: at the end of that loop, the front door leads **outside** instead of back to the start ([endings](endings.md)). Eight is roughly two loops of refusing everything, or several loops of refusing most things.

## 7. Measured in play

From the [quiz design §5](act0-quiz.md): appearance ideal (first makeover pick), criticism style (responses to the first criticism in each Loop 1 room), self-checking (Bathroom visits), self-image (mirror ratings), core belief (answer to the Reflection in Loop 2), and impulsivity, risk, conformity and regret (choice timer and undo window).

## 8. Decisions

| # | Decision | Recommendation |
| --- | --- | --- |
| S1 | Rose and Authenticity are the same thing | **Yes**, 12 petals |
| S2 | Self-Perception rises with early upgrades | **Yes** (the illusion), then falls from Loop 3 |
| S3 | Exhaustion shortens the undo window | **Yes** |
| S4 | Masks: 3 pieces per room | **Yes** |
| S5 | Resistance threshold | **8**, after the Loop 3 reveal |

## Sources

- Veale, D. (2004). Advances in a cognitive behavioural model of body dysmorphic disorder. *Body Image*, 1(1), 113–125.
- Delinsky, S. S., & Wilson, G. T. (2006). Mirror exposure for the treatment of body image disturbance. *International Journal of Eating Disorders*, 39(2), 108–116.
