# Loop Structure & Decay

> **Part of:** [GDD](../04-gdd.md) (#4) · **Step 4** · **Status:** Draft for review · **Last updated:** 28 Oct 2026
>
> **Question this doc answers:** how does a loop end and secretly restart, how is the loop hidden and then denied, what decays each loop, and is there a point of no return?
>
> **Legend:** **[Decided]** owner's direction · **[Proposed]** recommendation, needs sign-off · **[Open]** needs a decision.

---

## 1. The Penrose stairs

The Penrose stairs (Penrose & Penrose, 1958), later drawn by M. C. Escher in *Ascending and Descending* (1960), seem to climb forever while returning to the start. Penrose's house works the same way **[Decided]**: every loop *feels* like progress, the player only ever climbs up, and they always arrive back where they began.

**In 2D [Proposed]:** the house is a side-scroller in which every staircase goes *up*. After the fourth room, the last staircase climbs into the first room of the house. It's drawn so the impossibility is only visible if you look closely, like the drawing it's named after.

---

## 2. How a loop ends and restarts

The concept doc proposed three ways to hide the loop. **Recommendation: use all three, one per loop, so the loop never resets the same way twice. [Proposed]**

| Loop transition | Method | What the player experiences |
| --- | --- | --- |
| 1 → 2 | **Go to sleep** | After the fourth room, the protagonist is tired; they go to bed; blackout; they wake up "the next day" in the Family Room. Feels like a normal day-to-day life sim |
| 2 → 3 | **Seamless hallway** | The fourth room's exit leads into a corridor that blends straight into the first room, with no cut |
| 3 → 4 | **False freedom door** | A door of white light appears ("finally, a way out"); it fades, and they're back at the start. Never mentioned again |
| 4+ | Any of the above, glitching between them | The house is breaking down |

---

## 3. Hiding the loop, then denying it

**Tone [Decided]:** subtle, then denied. The game is an unreliable narrator that gaslights the player, mirroring how dysmorphia distorts reality.

**Using change blindness [Proposed].** People often fail to notice even large changes in a scene, especially across a cut or interruption. In one famous study, people giving directions didn't notice the stranger they were talking to had been swapped for a different person (Simons & Levin, 1998). Penrose uses this deliberately:

| Loop | What repeats or changes | Most players… |
| --- | --- | --- |
| 1 | Nothing obviously repeats | Feel normal progress |
| 2 | Small repetitions: the same picture frame, an identical lamp, wallpaper that repeats too perfectly **[Decided]**. NPCs say "Didn't we talk about this?" then deny it | Feel déjà vu without being sure |
| 3 | Dialogue repeats word for word; rooms reuse the exact same layout | Realize they're looping |
| 4+ | "New room discovered!" for the fifth time **[Decided]**; rooms bleed into each other | Know, while the game still denies it |

Streamers' chat will often spot Loop 2's repetitions before the streamer does, which is a good shared moment for the "spot what changed" crowd ([market research](../01-market-research.md) trend #3).

---

## 4. Decay across loops

**[Decided]** (concept doc §7), with music **[Proposed]**:

| Element | Loop 1 | Loop 2 | Loop 3 | Loop 4+ |
| --- | --- | --- | --- | --- |
| Rose | Full bloom | Petals missing | Half dead, bleeding | Nearly dead, blood pooling |
| Mirrors | Clean | Small crack | Many cracks | Shattered but still reflecting |
| Reflection | Normal | Tired | Damaged | Horrific |
| Room details | Stable | Suspiciously identical | Glitching | Rooms bleeding together |
| NPC dialogue | Natural | Slight repetition | Word for word | Corrupted |
| Lighting | Normal | Dimmer | Flickering | Strobing (removed in photosensitivity mode) |
| Music | Clean pop | Slightly detuned | Glitching | Stuttering, broken |

**The rose's state is real, not cosmetic.** The rose shows the actual number of petals left ([systems](systems.md)). The table above is the *environmental* decay, which follows the loop number; the rose follows the player's choices.

---

## 5. Point of no return (concept open question 3)

**Recommendation: you can never undo, but you can always stop, until the last petal falls. [Proposed]**

| Rule | Why |
| --- | --- |
| **Upgrades are never reversible** after the undo window | Irreversibility is a core theme **[Decided]** |
| **Stopping is always possible.** Refusing upgrades is how the loop is broken ([endings](endings.md)) | The message is recovery: you can't change what's done, but you can change what's next |
| **The last petal is the point of no return** (Bad ending) | The rose is restored only by self-love **[Decided]**; once it's gone, it's gone |
| **Every player reaches the reveal:** the last two petals can't fall before Loop 3 | Even a player who accepts everything sees the Loop 3 reveal before the Bad ending |
| **Completed masks take over:** once a room's mask is complete, the mask answers for the protagonist in that room (dialogue is auto-chosen) | "Masks that harden into your face" **[Decided]**; the player feels agency slipping |

---

## 6. Decisions

| # | Decision | Recommendation |
| --- | --- | --- |
| L1 | How loops reset | **All three methods**, one per transition (sleep → hallway → door of light) |
| L2 | How many loops at most | **No hard cap**; Loop 4+ repeats with growing corruption until an ending triggers |
| L3 | Point of no return | **The last petal**; you can't undo, but you can always stop before then |
| L4 | Last two petals protected until Loop 3 | **Yes** |
| L5 | Completed masks auto-answer | **Yes** |

## Sources

- Penrose, L. S., & Penrose, R. (1958). Impossible objects: A special type of visual illusion. *British Journal of Psychology*, 49(1), 31–33.
- Escher, M. C. (1960). *Ascending and Descending* (lithograph).
- Simons, D. J., & Levin, D. T. (1998). Failure to detect changes to people during a real-world interaction. *Psychonomic Bulletin & Review*, 5(4), 644–649.
