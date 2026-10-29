# Product Vision: Penrose #24

## Change History

| Date | Author | Change |
| --- | --- | --- |
| 2026-10-29 | @sky-yeom (with Copilot) | Initial draft |

> **What this doc is:** the long-term north star for Penrose: why it exists, who it's meant to change, and what impact it should have years after launch. The [PRD](03-prd.md), [GDD](04-gdd.md) and roadmap can change; they must all point here.
>
> **A note on the format:** product vision templates are usually written for B2B software, where the product improves something for *client companies*. Penrose is a consumer game, so the people it serves are **players** first, plus the **partners** who help it reach them: creators, publishers and porting partners, platforms, and mental-health organizations.

---

## 1. Vision statement

> **A world where people can see themselves through their own eyes, not through everyone else's.**

**Mission:** make a game that lets players *feel* how beauty standards, love and pressure turn "self-improvement" into self-destruction, and leaves them with a way back.

## 2. Product Vision Board

Structure after Roman Pichler's Product Vision Board.

| Vision | Target group | Needs | Product | Business goals |
| --- | --- | --- | --- | --- |
| People see themselves through their own eyes | **Players:** narrative-horror fans (Lore Divers), dark-aesthetic dress-up fans, players with lived experience of body image and family pressure (Meaning Seekers). **Partners:** creators, publishers and porting partners, platforms, mental-health organizations | **Players:** a twist about something real; choices that matter; to feel understood; a safe way to engage with a painful subject. **Partners:** content that performs and is safe to recommend | A 2–4 h hand-drawn psychological horror game disguised as a self-improvement game. Every "upgrade" is self-destruction, and choices decide one of four endings | A sustainable indie studio built on one acclaimed original IP: a niche hit (1k+ reviews) and an audience that follows the next game |

## 3. The problem we're answering

- **For players:** appearance pressure from family, friends, work and social media is everywhere, and in Korea it's intense: surgery as a graduation gift, relatives commenting at holidays, résumé photos. People rarely see it treated honestly in games. Games either ignore it or, like *Project Makeover*'s "ugly → fixed" ads, make it worse (those ads were ruled harmful by US and UK regulators).
- **For the medium:** Korean voices are under-represented in narrative horror, while culturally specific games (*Until Then*, *Detention*, *1000xRESIST*) succeed *because* they are specific ([market research §5](01-market-research.md)).
- **The opportunity:** players already love disguised-genre horror (*DDLC*, *MiSide*, *Endacopia*), but almost none of it is about something real. Only a dozen Steam games share Penrose's core tags.

## 4. Who we serve

### 4.1 Players (primary)

| Persona | What Penrose should change for them |
| --- | --- |
| **The Lore Diver** | A twist that leaves something to think about; a reason to replay and discuss |
| **The Dark-Aesthetic Dress-Up Fan** | A game in a genre they love that quietly questions the "glow-up" culture around them |
| **The Meaning Seeker** | Feeling seen; language for something they've lived; a pointer to support |

### 4.2 Partners (the "B2B" side)

| Partner | What they need from Penrose | What Penrose needs from them |
| --- | --- | --- |
| **Creators** (Let's Players, essayists, streamers) | A short, blind-playable game with a moment that works on camera and depth to analyze; content that's safe to monetize | Discovery. Every comparable game broke out through creators |
| **Publishers / porting partners** (e.g. Serenity Forge, Playism) | A proven PC title with a clear audience | Console and mobile versions after launch |
| **Platforms** (Steam, itch.io, later console and mobile stores) | Content that follows their policies; honest store pages and content warnings | Visibility (festivals, Scream Fest, featuring) |
| **Mental-health organizations** (body-image and eating-disorder charities) | A game that follows safe-messaging guidelines and points players to real help | Accurate support resources; review of sensitive content; possible partnership |

## 5. Long-term goals

| Horizon | Goal | Looks like |
| --- | --- | --- |
| **Launch** (target Oct 2028) | Ship Penrose and reach its audience | ~10k wishlists; ≥ 90% positive reviews; English, Steam (Windows/macOS); a free itch.io slice beforehand (PRD) |
| **+2 years** (2030) | Become *the* game people mention when talking about beauty standards and body image | 1k+ reviews in year one; creator videos and essays; console versions through a porting partner; a mobile version if store policies allow |
| **+5 years** (2033) | Penrose is a reference point, and the studio is sustainable | Cited in conversations about appearance pressure and in "games about mental health" lists; a funded second game for an audience that already exists |

## 6. Intended impact and how we'll know

| Impact | Measure |
| --- | --- |
| **Players reflect, not just react** | **North star metric: players who reach an ending and see the debrief.** That's the moment the game's message lands. Supporting metric: share of playtesters and opt-in players who agree "this made me think about whose eyes I see myself through" (target ≥ 70%) |
| **Players feel safe** | Content-setting usage; "too much" or "felt invasive" ≤ 15% in playtests ([quiz design §8](design/act0-quiz.md)) |
| **Players find help if they need it** | Support-resources screen views after endings (opt-in telemetry) |
| **The conversation spreads** | Creator videos and essays; review text mentioning beauty standards, family or self-image |
| **Korean stories travel** | Players outside Korea reviewing the cultural detail as specific, not confusing |

## 7. Strategic pillars

The GDD's design pillars ([GDD §1](04-gdd.md)), restated as product strategy:

1. **You did this.** Complicity is the experience, and it's what makes the message stick.
2. **Progress is a lie.** The loop *is* the message about chasing perfection.
3. **Whose eyes?** Every system asks whose gaze the player is living for.
4. **Sweet surface, honest design.** The house lies; the developer never does (warnings, settings, support).

## 8. Now / Next / Later

| Now (2026–27) | Next (2027–28) | Later (2028+) |
| --- | --- | --- |
| Pre-production docs; grey-box prototype; devlog; moodboard | Vertical slice; Steam page; free itch.io slice; Next Fest demo; alpha and beta | Launch at Scream Fest; console ports; mobile after policy review; the studio's second game |

## 9. What Penrose will never become

- **A real beauty or makeover game.** The surface is a disguise, never the product.
- **A game that sells "upgrades".** No microtransactions, cosmetic DLC or ads. Selling improvements would betray the message.
- **Shock for its own sake.** Body horror always means something, and marketing never shows "ugly → fixed" played straight.
- **A therapy tool.** Penrose is art from lived experience; it points to help but never claims to provide it.

## 10. Risks to the vision

| Risk | How we protect the vision |
| --- | --- |
| The game reads as exploitative | Safe-messaging rules, content warnings, intensity settings, a sensitivity reviewer ([PRD](03-prd.md)) |
| The twist gets spoiled, so the impact is lost | Marketing sells the mood and the opening, never the reveal |
| The message gets lost in the horror | Every ending ends with a debrief; playtest the "made me think" metric |
| A similar game launches first (*Fractured Blooms*) | Lead with what only Penrose has: the beauty-standards theme, a Korean voice, black/white/red pen-and-ink |
| Scope or burnout stops the game shipping | Stage gates, a grey-box prototype before art, cut Could-haves first |

## 11. How the other documents connect

| Document | Its job in relation to the vision |
| --- | --- |
| [Market Research](01-market-research.md) (#1) | Evidence that the audience and the gap exist |
| [PRD](03-prd.md) (#3) | What v1.0 must deliver to move toward the vision |
| [GDD](04-gdd.md) (#4) | How the game makes the vision playable |
| Roadmap and milestones (#11, #12) | When each horizon happens |
| Marketing plan (#16) | How partners and players find it, without spoiling it |

## Sources

- Pichler, R. *The Product Vision Board.* [romanpichler.com](https://www.romanpichler.com/tools/product-vision-board/)
- Market data and comparables: [01 · Market Research](01-market-research.md).
