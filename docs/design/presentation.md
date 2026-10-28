# Presentation: Puzzles, UI, Art, Audio, Settings

> **Part of:** [GDD](../04-gdd.md) (#4) · **Step 7** · **Status:** Draft for review · **Last updated:** 28 Oct 2026
>
> **Question this doc answers:** what the player sees, hears and touches: light puzzles, interface, controls, art direction, sound and settings.
>
> **Legend:** **[Decided]** owner's direction · **[Proposed]** recommendation, needs sign-off · **[Open]** needs a decision. Art direction will be refined by the moodboard (#2).

---

## 1. Light and angle puzzles [Decided] concept; design [Proposed]

The concept doc uses angle and light as puzzle mechanics, revealing different reflections. Proposal: **three kinds of light**, each showing a different reflection.

| Light | Where it appears | Reflection it shows | Meaning |
| --- | --- | --- | --- |
| **Ring light / flattering light** | Social Media Room, Society Room (résumé photo) | **Idealized**: the filtered self | Fantasy |
| **Harsh overhead light** | Family Room, the Bathroom at night | **Distorted**: every flaw magnified | Dysmorphia |
| **Natural window light** | Hidden in each room; needed for the Special ending | **Accurate**: what's actually there | Reality |

**Puzzle pattern:** each room has one light puzzle. Moving lamps, mirrors or curtains changes what a reflective surface shows, and finding the natural light unlocks a hidden line or memory that counts toward Resistance. The Special ending's Bathroom moment is the final light puzzle ([endings](endings.md)).

## 2. Interface: diegetic, no HUD [Proposed]

Nothing floats over the screen. Every system lives inside the world:

| Information | Where the player sees it |
| --- | --- |
| Stats and status | The **Bathroom mirror** (appearance, masks, how each room sees you) |
| Authenticity | **The rose** in the Bathroom |
| Social Media Room | An **in-game phone/feed** (PRD P1 #15) |
| Undo window | The mini-game's last frame "holds" with a small countdown, as if the moment were deciding |
| Loop count | Never shown. The game denies looping **[Decided]** |
| "New room discovered!" | A cheerful pop-up that glitches in Loop 4+ **[Decided]** |

## 3. Controls [Proposed]

| Input | Action |
| --- | --- |
| Move left / right (A/D, ←/→, stick) | Walk through rooms and up the stairs |
| Click / A button | Talk, interact, choose |
| Mouse drag / stick | Mini-games, moving lamps and mirrors |
| Esc / Start | Pause, settings, support resources |

Full controller support; text readable at 1280×800 (Steam Deck, PRD P2 #25).

## 4. Art direction [Decided] (concept doc §11)

- **2D, hand-drawn**, pen-drawn webtoon/anime linework.
- **Black, white and red only.** Red is reserved for the rose, blood, horror reveals and warnings. Red appears only in reflections at first, then bleeds into reality.
- **Techniques [Proposed]:** hatching and cross-hatching (Escher-like) for shadow; stippling for texture; symmetry and mirrored compositions that grow more unnatural as the protagonist loses themselves.
- **Key scenes [Decided]:** plastic-surgery ads on the subway; clinics covering the city (Social Media Room screens and windows).
- **Accessibility:** anything red signals must also have a shape or motion cue (PRD P0 #10).
- *To be refined by the moodboard (#2).*

## 5. Audio [Decided] style; structure [Proposed]

- **Style [Decided]:** pop that is distorted, light and shattering; sweet and unsettling at once.
- **Harmony [Decided]:** common K-pop chord progressions (I–V–vi–IV, IV–V–iii–vi, and others from the concept doc).
- **Decay per loop [Proposed]:** clean → slightly detuned → glitching → stuttering and broken ([loop & decay §4](loop-and-decay.md)).
- **One theme song per room**, built on the same melody, so the house sounds like one song falling apart.
- **A catchy standalone main theme** for marketing (fan music drove spread for DDLC, Needy Streamer Overload and KinitoPET: [market research §3.5](../01-market-research.md)).

## 6. Settings & safety (PRD P0 #9–#10)

| Setting | Detail |
| --- | --- |
| **Content warnings** | On first launch and on the store page; re-readable from the menu. Body horror, self-harm imagery, eating and body-image themes, family pressure, flashing lights |
| **Intensity** | Full · Softened · Symbolic ([upgrades & reveals §3](upgrades-and-reveals.md)) |
| **Photosensitivity mode** | Removes the Loop 4+ strobing. Even with it off, flashing stays under three flashes per second, the threshold in WCAG 2.3.1 |
| **Support resources** | International body-image, eating-disorder and mental-health resources; from the menu and after every ending |
| **Accessibility** | Text size and speed; rebindable controls; captions for important sounds; non-colour cues for red; follows the Game Accessibility Guidelines |

## 7. Decisions

| # | Decision | Recommendation |
| --- | --- | --- |
| P1 | Three light types (flattering, harsh, natural) | **Yes** |
| P2 | Fully diegetic UI, no HUD | **Yes** |
| P3 | One theme per room on a shared melody | **Yes** |
| P4 | Wait for the moodboard before final art rules | **Yes** |

## Sources

- W3C. *Web Content Accessibility Guidelines (WCAG) 2.2*, Success Criterion 2.3.1 Three Flashes or Below Threshold.
- *Game Accessibility Guidelines.* [gameaccessibilityguidelines.com](https://gameaccessibilityguidelines.com/)
