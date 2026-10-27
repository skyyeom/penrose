# 01 · Market Research: Penrose

> **Issue:** #1 · **Phase:** 1 – Discovery · **Status:** Draft v1 · **Data snapshot:** 27 Oct 2026 (during Steam Scream Fest)
>
> **Question this doc answers:** *Is there a market for Penrose, who is it for, what are they playing right now, and where is the gap we can own?*

---

## 0. TL;DR (read this if nothing else)

1. **The genre is healthy and growing.** Indie breakouts on PC and console more than doubled year on year (13 → 33), and 53% of breakouts were the *first game in a new series*. New indie IP is winning ([Sensor Tower, 2026](https://sensortower.com/blog/indie-and-new-ip-break-out-without-denting-aaa)).
2. **"Cute surface, horror underneath" is one of the hottest patterns on Steam right now.** *Endacopia* (Jul 2026), a cute edutainment-style game that hides horror, is the #1 streaming breakout in our set (295k Twitch hours watched in the last 30 days). *MiSide*, *Needy Streamer Overload* and *DDLC* show it isn't a fad.
3. **Penrose's exact niche is nearly empty.** On Steam only **56 games** are tagged *Psychological Horror + Hand-drawn*, and only **12** add *Female Protagonist + Multiple Endings*. On itch.io only **19 projects** are tagged *Horror + Dress-up*, and **all of them are free jam games**. Nobody sells a polished game about **beauty standards and body image**, let alone from a **Korean** perspective.
4. **The closest rising competitor to watch is *Fractured Blooms*** (Serenity Forge, TBA): a "cozy life-sim in a horror time-loop" with body-horror imagery. A demo or stream peaked at **26k Twitch viewers** this year. It validates the idea and is a threat, so Penrose must stand apart through **theme (beauty/self-image), culture (K-beauty), and art (black/white/red pen-and-ink)**.
5. **What players want:** to be *misled in the best way*, a story that *holds a mirror up to them*, **2–5 hours**, **replay value and hidden layers**, **content warnings and an intensity option**, and **gameplay that expresses the theme**.
6. **Realistic upside:** a "niche hit" (1–2k reviews) is roughly **30–60k copies** (about $0.4–0.8M gross at $12.99). A breakout like *Endacopia* or *Look Outside* is **150–300k copies**. Most games sell far less, so marketing has to start now (see §9).
7. **Timing:** we are inside **Steam Scream Fest (26 Oct – 2 Nov 2026)**. It's the right week to *announce* and start the devlog. The game itself should aim at a future horror window (see §9).

---

## 1. Method & sources

| Source | What we pulled | Notes |
|---|---|---|
| **Steam Store** (official) | Price, release date, developer, tags, English review counts and %, last-30-day reviews, Korean language support, *Most Wishlisted* (upcoming), *New & Trending*, tag-intersection counts, a full scan of 2025–26 releases in our tags | 62 titles profiled. Raw data: [`steam-comparables.csv`](01-market-research-data/steam-comparables.csv), [`steam-upcoming-watchlist.csv`](01-market-research-data/steam-upcoming-watchlist.csv) |
| **Steam store pages: Most Helpful reviews** | Player review text for 12 comparables | Used for §6 *User wants* |
| **itch.io** | Top sellers, top rated, and new & popular lists for psych horror, body horror, horror + dress-up, horror + VN, horror + hand-drawn, horror + female protagonist, mental health + horror | [`itch-snapshot.csv`](01-market-research-data/itch-snapshot.csv) |
| **SullyGnome** (Twitch) | 30-day hours watched, viewers and streamers; year-to-date peak | [`twitch-sullygnome.csv`](01-market-research-data/twitch-sullygnome.csv) |
| **Sensor Tower / VG Insights** | 2026 breakout-cohort report | VG Insights now redirects to Sensor Tower |
| **GameDiscoverCo, Gamalytic** | Benchmarks (review→sales multiplier, wishlist conversion) | Gamalytic's API and per-game data are paid. Worth a manual check in a browser |
| **SteamDB** | ❌ *Not used* | SteamDB blocks automated access and asks bots/agents not to scrape it. Its numbers come from the same Steam data used above. **To-do (manual):** check follower counts and peak CCU for the top 10 comps by hand |

**How sales are estimated (the "Boxleiter method"):** `copies ≈ reviews × 30` (realistic range ×20–×50). We only count **English** reviews, so titles with big Asian or Russian audiences (*MiSide*, *Sweet Home*, *Needy Streamer*, *Tiny Bunny*) are **under**-estimated. These are directional, not facts.

**"Velocity"** = reviews in the last 30 days ÷ all reviews. High velocity means the game is **rising right now**. It's only meaningful for games released more than about 30 days ago.

---

## 2. Market overview

### 2.1 Size of the space (Steam tag counts, Oct 2026)

| Steam tag intersection | # games | What it tells us |
|---|---:|---|
| Psychological Horror + Choices Matter (upcoming only) | 1,283 | Crowded *broad* genre |
| Psychological Horror + Female Protagonist (upcoming only) | 752 | Crowded |
| Psychological Horror + Visual Novel (upcoming only) | 725 | Crowded |
| Psychological Horror + Choices Matter + Multiple Endings (released) | 127 | Moderate |
| Psychological Horror + Cute (released) | 125 | Small but proven (DDLC, Needy Streamer, MiSide) |
| **Psychological Horror + Hand-drawn (released)** | **56** | **Small, high quality** (OMORI, Slay the Princess, Fran Bow) |
| Psychological Horror + Character Customization (released) | 46 | Mostly mis-tagged AAA, meaning *no real competitor* |
| **Psych Horror + Hand-drawn + Female Protagonist + Multiple Endings** | **12** | **Penrose's exact shelf is almost empty** |

On **itch.io**: ~22k *psychological horror* projects, 8.4k *horror + visual novel*, 664 *horror + hand-drawn*, 284 *mental health + horror*, 209 *body horror*, and **only 19 *horror + dress-up*** (all free).

> **PM note:** the broad genre is crowded; the *intersection* Penrose sits in is not. Positioning in a small, specific niche is how indie games get discovered.

### 2.2 Market signals

- **Indie new IP is breaking out more than ever.** Sep 2025 – Aug 2026: 76 launches sold 500k+ units in 30 days (up from 55); **indie breakouts 13 → 33**; new series = 53% of breakouts; 27 of 35 new-IP breakouts were indie ([Sensor Tower](https://sensortower.com/blog/indie-and-new-ip-break-out-without-denting-aaa)).
- **Horror is the most streamer-driven genre.** Short, high-reaction, single-player narrative horror spreads through Twitch/YouTube and analysis creators (one *Who's Lila?* review: *"Bought it after watching Flaw(ed) Peacock's excellent deconstruction"*).
- **Seasonality:** Steam **Next Fest (19–26 Oct 2026)** ran straight into **Scream Fest (26 Oct – 2 Nov 2026)**. October is the year's peak for horror attention.
- **Audience:** women are ~48% of all players. Surveys put women at ~35% of self-identified horror fans, and narrative/VN audiences skew female (directional, secondary sources). Penrose's premise speaks directly to an audience the horror genre usually under-serves.
- **Cultural tailwind:** global interest in K-beauty and Korean pop culture is high, and Korea has one of the highest cosmetic-procedure rates in the world. Surgery as a graduation gift is a widely reported phenomenon. *(Figures come from secondary sources. Verify with ISAPS / academic sources before using them publicly.)*

---

## 3. Competitive analysis

### 3.1 Established comparables (proven demand)

| Game | Dev | Released | Price | EN reviews (%) | Est. copies (×20–×50) | Last 30d reviews (velocity) | Twitch hrs, 30d | KO | Why it matters to Penrose |
|---|---|---|---|---|---|---|---|---|---|
| Doki Doki Literature Club Plus! | Team Salvato | Jun 2021 | $14.99 | 11,371 (97%) | 227k–569k | 376 (3.3%) | n/a | ✅ | Cute dating-sim → horror twist; *the* genre-deception template (base game is free) |
| NEEDY STREAMER OVERLOAD | WSS playground | Jan 2022 | $15.99 | 18,018 (95%) | 360k–901k | 689 (3.8%) | n/a | ✅ | Cute UI + social-media pressure + mental health + multiple endings |
| Mouthwashing | Wrong Organ | Sep 2024 | $12.99 | 24,954 (95%) | 499k–1.2M | 366 (1.5%) | 42k | ✅ | 3–4 h, **complicity** theme, "a mirror held up to yourself" |
| Slay the Princess – Pristine Cut | Black Tabby | Oct 2023 | $17.99 | 24,221 (97%) | 484k–1.2M | 550 (2.3%) | 47k | ✅ | **Hand-drawn pencil art + loops** + choices that reshape the world |
| OMORI | OMOCAT | Dec 2020 | $19.99 | 54,610 (97%) | 1.1M–2.7M | 516 (0.9%) | 61k | ✅ | Hand-drawn psych horror about guilt; huge cult following |
| MiSide | AIHASTO | Dec 2024 | $14.99 | 26,193 (97%) | 524k–1.3M | 1,021 (3.9%) | 55k | ✅ | Cute care-sim → horror. Players asked for a **Peaceful Mode** |
| The Coffin of Andy and Leyley | Kit9 | Oct 2023 | $11.99 | 19,135 (95%) | 383k–957k | 578 (3.0%) | 12k | — | Hand-drawn, taboo themes, multiple endings, tiny team |
| Fran Bow | Killmonday | Aug 2015 | $14.99 | 8,531 (96%) | 171k–427k | 234 (2.7%) | 41k | — | Girl protagonist, mental illness, hand-drawn; still selling after 11 yrs |
| Little Misfortune | Killmonday | Sep 2019 | $19.99 | 5,601 (90%) | 112k–280k | 143 (2.6%) | 17k | — | Girl protagonist + narrator voice (a cautionary tale, see §6) |
| Who's Lila? | Garage Heathen | Feb 2022 | $11.99 | 1,851 (95%) | 37k–93k | 64 (3.5%) | n/a | — | **Face-manipulation mechanic**, the closest mechanic to "building a face" |
| Pocket Mirror ~ GoldenerTraum | AstralShift | May 2023 | $19.99 | 1,606 (92%) | 32k–80k | 23 (1.4%) | n/a | ✅ | Mirror/self-image motif, female protagonist |
| The Exit 8 | KOTAKE CREATE | Nov 2023 | $3.99 | 5,288 (93%) | 106k–264k | 142 (2.7%) | 27k | ✅ | **Loop/anomaly** mechanic; cheap and viral on streams |
| GRIS | Nomada | Dec 2018 | $14.99 | 27,477 (95%) | 550k–1.4M | 409 (1.5%) | n/a | ✅ | Hand-drawn, limited-palette art direction benchmark |
| The Coma 2: Vicious Sisters | Dvora (KR) | Jan 2020 | $14.99 | 425 (93%) | 8.5k–21k | 16 (3.8%) | n/a | ✅ | **Korean-made** horror. Korean studios are under-represented in this space |

### 3.2 Rising: 2025–26 releases with momentum

Found by scanning **every 2025–26 Steam release** tagged Psych Horror × {Visual Novel, Hand-drawn, Female Protagonist, Cute, Choices Matter + Multiple Endings, 2D} with 150+ reviews (248 titles), then filtering out AAA.

| Game | Dev | Released | Price | EN reviews (%) | Est. copies | Last 30d (velocity) | Twitch hrs, 30d | KO | Signal for Penrose |
|---|---|---|---|---|---|---|---|---|---|
| **lily's world XD** | SonderingEmily | Sep 2026 | $11.99 | 1,603 (97%) | 32k–80k | 501 (**31%**) | **121k** (peak 14k) | — | A teen girl's 2004 laptop and diary. **Fastest-rising** in the set. Interface-based ("diegetic") horror |
| **Money for Girls: Amortized** | Porpentine | Aug 2026 | $15.00 | 1,250 (98%) | 25k–62k | 368 (**29%**) | 9k | — | **Fashion + stickers + character customization + body horror.** Closest thematic match |
| **Endacopia** | Andyland | Jul 2026 | $16.50 | 6,829 (98%) | 137k–341k | 1,094 (16%) | **295k** | — | Cute edutainment look → horror. **#1 streaming breakout** |
| Desktop Explorer | Recurring Dream | Jul 2026 | $17.99 | 1,780 (96%) | 36k–89k | 323 (18%) | 32k | — | "Found PC" diegetic horror |
| AI2U: With You 'Til The End | AlterStaff | Aug 2026 | $14.99 | 1,074 (88%) | 21k–54k | 242 (23%) | n/a | — | Cute anime → yandere horror |
| Yunyun Syndrome!? Rhythm Psychosis | Alliance Arts | Apr 2026 | $16.99 | 1,558 (90%) | 31k–78k | 196 (13%) | n/a | ✅ | Online-poster girl + psychosis. Shows the *Needy Streamer* formula still sells |
| Tiny Bunny | Saikono | Dec 2025 | $10.99 | 1,003 (81%) | 20k–50k | 184 (18%) | n/a | — | Non-linear horror VN (big non-English audience) |
| Z.A.T.O. // I Love the World… | Ferry // Nopanamaman | Nov 2025 | Free | 6,981 (98%) | 140k–349k players | 810 (12%) | n/a | — | Free psych-horror VN, also on itch.io's *New & Popular*. **A free release can build a big audience** |
| No, I'm not a Human | Trioskaz | Sep 2025 | $14.99 | 10,204 (93%) | 204k–510k | 709 (7%) | 131k | ✅ | Choice-driven paranoia horror; 10k reviews in ~13 months |
| Sweet Home | 开心茶房 | Aug 2025 | $7.99 | 10,453 (94%) | 209k–523k | 447 (4%) | n/a | ✅ | Chinese school VN about **family and peer pressure**. Asian-perspective narrative sells |
| and Roger | TearyHand | Jul 2025 | $4.99 | 1,368 (96%) | 27k–68k | 118 (9%) | n/a | ✅ | Hand-drawn **life-sim + psych horror** about family |
| Look Outside | Francis Coulombe | Mar 2025 | $9.99 | 10,022 (98%) | 200k–501k | 474 (5%) | 144k | — | Small-team psych horror at $9.99 reaching ~300k |
| Saihate Station | びぶ/viv | Mar 2025 | Free | 3,244 (97%) | 65k–162k players | 290 (9%) | n/a | ✅ | Free hand-drawn psych-horror VN about a codependent relationship |
| Cabernet | Party for Introverts | Feb 2025 | $19.99 | 1,460 (94%) | 29k–73k | 52 (4%) | n/a | — | Female protagonist whose choices **shape who she becomes**; hand-drawn |

### 3.3 Upcoming games to watch (Steam *Most Wishlisted*, by tag)

| Game | Dev | Planned | Why we care | Threat |
|---|---|---|---|---|
| **Fractured Blooms** | Serenity Forge | TBA | "Cozy life-sim in a horror time-loop… plates of her legs." **Life-sim + loop + body horror + cute.** Twitch peak of 26k viewers this year | 🔴 **High.** Closest concept, with an experienced publisher |
| **Am I Nima** | HO! Games | **27 Nov 2026** | Hand-drawn psych horror: *"convince your mom you really are her daughter."* Mother/daughter identity pressure | 🟠 Medium. Watch its launch performance as a benchmark |
| **Lacey's Flash Games** | ghosttundra | **27 Oct 2026 (today)** | *"These are the REAL girls' games"*: 2000s girls' Flash/dress-up games hiding horror | 🟠 Medium. Same "girly game → horror" hook |
| **HABROMANIA** | Sydney Collings | TBA | 19-year-old Alice in a "surreal, cozy hellscape". Female solo dev | 🟡 Low–Med |
| **Neverway** | Coldblood Inc. | 2027 | Life-sim farming + psychological horror, hand-drawn. Very high wishlist rank | 🟡 Low–Med. Different theme, same "life-sim → horror" shelf |
| **Tulpa the Unseen Lover** | Horse Position | TBA | "Create yourself a perfect friend… don't let her turn your life into a living hell". Customization → horror | 🟡 Low–Med |
| **Shutter Story** | Frostwood | Q1 2027 | Photo-editing as a horror mechanic. Relevant to Penrose's camera/filter symbolism | 🟢 Low |
| **Sally Face 2** | Portable Moose | TBA | Sequel to a hand-drawn cult hit; will pull the same audience's attention | 🟢 Low (different theme) |

> **PM note:** Recheck this table monthly. When *Am I Nima* and *Lacey's Flash Games* launch, record their review counts after 7 and 30 days. They are the best near-term predictors of how a Penrose-like game will perform.

### 3.4 Competitive positioning map

```
                        CUTE / DECEPTIVE SURFACE
                                  ▲
        Lacey's Flash Games ·     │     · DDLC · Needy Streamer
          Money for Girls ·       │       · MiSide · Endacopia
                                  │
     ★ PENROSE (gap)              │          · Fractured Blooms
   self-image / beauty /          │
   lived experience, KR           │
  PERSONAL / ◄────────────────────┼────────────────────► GENRE /
  SOCIAL THEME                    │                     SUPERNATURAL THEME
                                  │
       Mouthwashing · Am I Nima   │      · Slay the Princess
     Fran Bow · and Roger         │      · The Exit 8 · Look Outside
                                  │
                                  ▼
                         OVERTLY DARK FROM MINUTE 1
```

**The gap:** a deceptively cute game whose horror is **social and personal (beauty standards, family/peer/online pressure)** rather than supernatural, told from a specific cultural and lived perspective.

---

## 4. itch.io landscape

| List | What's there | Takeaway |
|---|---|---|
| Psych horror, **top rated** | *last seen online* (stranger's computer), *Prescription:LOVE*, *Online Obsession*, *Do NOT Take This Cat Home*: free, short, mostly VN | The itch audience wants **free, short, shareable** horror |
| Psych horror, **new & popular** | *Z.A.T.O.*, *Breadwinner* ("horrors of a family living on one salary"), *Revelations* ("unveil your secrets and become pure"), *Quiet Care* | **Domestic and social horror** is trending, not just monsters |
| **Horror + dress-up (19 total)** | *Kawaii Dress Up Game!* ("Something is off about this game…"), *Dress Me Down*, *Killer Couture*, *Sick Fashion* ("survival horror dress-up"), *DOLLGAME* | **The hook is proven in jam form, but no one has built the full game.** This is Penrose's white space |
| Body horror (209) | *Cursed Escape* ("a curse slowly morphs your body"), *Mixology*, *GUTLESS* | Transformation body horror has a dedicated audience |
| Horror + hand-drawn (664) | **LiminAce** dominates (*Bedrot*, *So Perfect I Could Eat You Up*: "envy eats you alive", *Dress Me Down*) | A creator to study; also a possible collaboration or cross-promo partner |
| Mental health + horror (284) | *Milk inside a bag of milk…*, *Lynne* ("the scariest thing… being a teenager") | Small but loyal; values sensitivity |

**Implication:** itch.io is our **prototype and community channel**, not our main revenue channel. A free, browser-playable **"Act 0 quiz + first room"** slice fits exactly what performs there, and becomes a funnel to the Steam wishlist.

---

## 5. Current trends (what's rising)

| # | Trend | Evidence (Oct 2026) | Penrose fit |
|---|---|---|---|
| 1 | **Cute surface → horror reveal** | Endacopia (295k Twitch hrs/30d), MiSide, AI2U, Lacey's Flash Games, Magical Girl ER, Fractured Blooms, BOMBANANA! | ⭐⭐⭐ Core hook (Act 0–1 makeover → reveal) |
| 2 | **Diegetic interface horror** (laptops, desktops, feeds) | lily's world XD (31% velocity), Desktop Explorer, *last seen online* (#1 top-rated psych horror on itch), Needy Streamer | ⭐⭐⭐ **Social Media Room** could be a fake phone/feed UI |
| 3 | **Loops and anomalies** | The Exit 8, Slay the Princess, Fractured Blooms, *Akeno no Yosuga – Twilight Loop* (upcoming) | ⭐⭐⭐ Penrose stairs loop + "spot what changed" visual decay |
| 4 | **Life-sim / cozy × horror** | Neverway, Fractured Blooms, and Roger, The Mailroom ("cozy horror workplace sim"), Berry Bury Berry | ⭐⭐ Makeover/life-sim surface |
| 5 | **Personal, identity and family horror by women and queer creators** | Money for Girls (98%), Am I Nima, HABROMANIA, Saihate Station, Sweet Home | ⭐⭐⭐ Lived-experience authenticity is a *selling point* |
| 6 | **Asian-perspective narrative horror** | Sweet Home (CN, 10k), Saihate Station (JP), Stiff Neck (CN), Yunyun Syndrome (JP) | ⭐⭐⭐ Korean voice is **under-represented**, an opening |
| 7 | **Short and cheap** ($5–15, 2–5 h) | Mouthwashing 3–4 h, Who's Lila 3–5 h, Little Misfortune 3–4 h, Exit 8 $3.99, Look Outside $9.99 | ⭐⭐⭐ Matches solo/small-team scope |
| 8 | **Free-to-start funnels** | Z.A.T.O. & Saihate Station free on Steam (7k and 3k reviews); DDLC free base → paid Plus | ⭐⭐ Free itch prototype → paid Steam |
| 9 | **Analysis-YouTuber discovery** | Reviews citing video essays (Flaw(ed) Peacock); "must be played blind" | ⭐⭐⭐ Hidden quiz-based personalization gives essayists something to dig into |

---

## 6. User wants (from player reviews)

| What players say | Source (Steam Most Helpful) | Requirement for Penrose (feeds #3 PRD) |
|---|---|---|
| *"Scary, unpredictable, and **misleading (in the best way possible!)**"* | DDLC+ | The cute surface must be **convincing**; the reveal must feel *earned*, not cheap |
| *"A terrifying **mirror held up to** ego, control… forced me to look in the mirror at the ways I might be doing the same thing"* | Mouthwashing | Complicity is the emotional payload. **The player must realize *they* did it** (already in the concept) |
| *"A horror game about running from the most terrifying monster: **Responsibility**"* | Mouthwashing | Real-world horror beats monsters for this audience |
| *"The story **MUST be played blind**"* · *"stays with you for life"* | Mouthwashing | Marketing must **sell the vibe without spoiling the twist** (→ #16) |
| *"I really love how **the gameplay actually reflects the dark underbelly**"* | Needy Streamer | Mechanics must *be* the theme (masks lock in, undo window, quiz weighting) |
| *"Near infinite **replayability**… peeling back layers"* | Who's Lila? | Quiz-weighted rooms and multiple endings must produce **noticeably different runs** |
| *"Not very long, but that's **a good thing for the pacing**"* | Little Misfortune | Target **2–5 h** first playthrough |
| *"Mr. Voice… was **so irritating** to listen to… the reason I kept taking breaks"* | Little Misfortune (negative) | **Risk:** a constant narrator or "Reflection" voice can grate. Use it sparingly and playtest it (→ #15) |
| *"My only complaint is that **Peaceful Mode** still hasn't been released"* | MiSide | Validates an **intensity / body-horror opt-out setting** (concept doc open question #6) |
| *"Not for the squeamish, and you probably should **read the content warning**"* | Money for Girls | Players *expect* clear content warnings for body horror and do not punish games for them |
| *"Can't even be played in **full screen** properly"* | Who's Lila? | Basic polish (resolution, settings, accessibility) still matters |
| *"Secrets you need for the third ending can be **pretty cryptic**"* | Endacopia | Hidden endings should be findable without a wiki, or the community does the work (decide deliberately) |
| *"Bought it after watching Flaw(ed) Peacock's **deconstruction of the plot**"* | Who's Lila? | Design for **analysis content**: symbolism (rose, gumiho, Penrose stairs) gives essayists material |

---

## 7. Target audience: personas

### P1 · "The Lore Diver" (primary)
- **Age 17–28, any gender**, plays DDLC, OMORI, Slay the Princess, Who's Lila?, Inscryption.
- Watches video essays and lore channels; reads endings wikis; replays for secrets.
- **Wants:** a twist, hidden systems, multiple endings, symbolism to decode.
- **Penrose hook:** *"The quiz secretly decided which rooms hurt you most."* Every run is personal.
- **Where:** YouTube, Reddit (r/visualnovels, r/HorrorGaming), Discord, Steam.

### P2 · "The Cute-Horror Girlie" (primary)
- **Age 15–25, majority women and non-binary**, plays Needy Streamer, MiSide, itch.io dress-up games, Lacey's Flash Games.
- Loves kawaii aesthetics turned dark; shares clips on TikTok; buys cheap, plays free.
- **Wants:** an aesthetic, a shareable "wait, WHAT" moment, dress-up/customization.
- **Penrose hook:** *a makeover game that's secretly body horror.*
- **Where:** TikTok, Tumblr, itch.io, Twitter/X, Pinterest.

### P3 · "The Meaning Seeker" (secondary)
- **Age 22–35**, played Mouthwashing, GRIS, Fran Bow, Money for Girls. Often has lived experience with body image, family pressure or dysmorphia.
- **Wants:** to be *understood*; a story that "stays with me"; respect for the subject.
- **Penrose hook:** *made by someone who lived it*; content warnings and a recovery-oriented ending.
- **Where:** Steam reviews, Letterboxd-style communities, Bluesky, Korean/Asian-diaspora spaces.

### Channel persona · "The Horror Streamer / Essayist"
- Needs a **short (≤4 h), blind-playable**, high-reaction game with a twist chat can scream at. *Spot-the-change* loops (Exit 8 style) invite chat participation.
- Penrose's *gaslighting loop* ("New room discovered!" for the fifth time) and visual decay are made for this.

---

## 8. SWOT

| **Strengths** | **Weaknesses** |
|---|---|
| Authentic lived experience + specific Korean cultural angle that no competitor has | Solo/first-time team; hand-drawn art × loop variants multiplies asset count (→ #13) |
| Hook that fits the #1 rising trend (cute → horror) | No existing audience or devlog following yet |
| Strong, simple visual identity (black/white/red pen-and-ink) that stands out in thumbnails | Sensitive topic: needs care, playtesting and consultation |
| Built-in replayability (quiz-weighted rooms, 4 endings) | Theme may read as "not for me" to some male horror players |
| **Opportunities** | **Threats** |
| Near-empty niches (Steam: 12 games; itch horror + dress-up: 19, all free) | ***Fractured Blooms*** (Serenity Forge) launching first with a similar loop/life-sim/body-horror pitch |
| Indie new-IP breakouts doubled in 2026 | *Am I Nima* and *Lacey's Flash Games* fill nearby shelf space in late 2026 |
| Streamer/essayist ecosystem for twist horror | Platform/streamer content policies around self-harm imagery (YouTube monetization) |
| EN + KO launch (most top comps support Korean); JP/zh-CN audiences proven by Sweet Home, Saihate Station | Market saturation: 1,000+ upcoming psych-horror games competing for attention |
| Halloween / Scream Fest moments every year | Scope creep delaying launch past the trend window |

---

## 9. Opportunity sizing & potential gains

Using comparables and the review multiplier, at an assumed **$12.99** price:

| Scenario | Comparable tier | EN reviews | Est. copies (×30) | Gross revenue | ≈ Net to dev* |
|---|---|---:|---:|---:|---:|
| **Miss** | most Steam releases | < 100 | < 3k | < $39k | < $20k |
| **Niche hit** | Who's Lila?, Pocket Mirror, Cabernet, lily's world XD (so far) | 1k–2k | 30k–60k | $390k–$779k | ~$195k–$390k |
| **Breakout** | Endacopia, Look Outside, No I'm not a Human | 5k–10k | 150k–300k | $1.9M–$3.9M | ~$1.0M–$1.9M |
| **Viral outlier** | Mouthwashing, MiSide, Coffin of A&L | 20k+ | 600k+ | $7.8M+ | ~$3.9M+ |

\*Net ≈ 50% of gross after Steam's 30%, discounts, regional pricing, refunds and taxes. Rough rule of thumb only.

**What moves Penrose from "miss" to "niche hit" (the realistic target):**
- **Wishlists before launch.** Indie-marketing rules of thumb: ~10–20% of wishlists convert in launch week, and ~7k wishlists is commonly cited as the level that gets a game onto Steam's *Popular Upcoming* list. **Proposed goal: 10k wishlists by launch** (→ #3 PRD success metrics, #16 marketing).
- **A free itch.io prototype** (Act 0 quiz + first room) to build a following, like Z.A.T.O. and Saihate Station did.
- **Steam Next Fest demo** + a launch window near Scream Fest (horror attention peak).
- **EN + KO at launch**; consider JP and zh-CN as stretch goals.
- **Price $9.99–$14.99** for a 2–5 h game (sweet spot across comps).

---

## 10. Positioning statement

> **For** players who love story-driven horror hiding behind a cute surface (*DDLC*, *Needy Streamer Overload*, *Endacopia*),
> **Penrose is** a hand-drawn psychological horror game that turns a K-beauty makeover sim into an endlessly looping house of body horror,
> **that** makes you realize every "improvement" you chose was destroying her.
> **Unlike** other cute-to-horror games, its monster is real: beauty standards and the people who love you pushing you toward them, told from a Korean woman's lived experience.

**Elevator pitch:** *"It's a makeover game. The house won't let you leave. And the mirror is starting to show what you've actually done."*

---

## 11. Recommendations → inputs for the next docs

| # | Recommendation | Goes to |
|---|---|---|
| R1 | Lock the niche: **psych horror × hand-drawn × cute-deceptive × beauty/self-image × Korean voice** | #3 PRD (goals, positioning) |
| R2 | Target **2–5 h**, **$9.99–$14.99**, **PC (Steam) first**, **EN + KO** at launch | #3 PRD (scope, platform) |
| R3 | Include an **intensity / body-horror toggle** + upfront **content warnings** (validated by MiSide and Money for Girls reviews) | #3 PRD, #4 GDD (closes open question #6) |
| R4 | Make the **Social Media Room a diegetic phone/feed UI** (trend #2) | #4 GDD |
| R5 | Lean into **"spot what changed"** loop decay for streamer participation (trend #3) | #4 GDD, #16 Marketing |
| R6 | Use the **Reflection's voice sparingly** and playtest it for annoyance (Little Misfortune lesson) | #4 GDD, #15 Playtest |
| R7 | Measure success with **wishlists, completion rate, ending distribution, Twitch/YouTube coverage** | #3 PRD → #10 Telemetry |
| R8 | **Start the devlog this week** (Scream Fest), plan a **free itch.io slice**, then a **Steam page + Next Fest demo** | #16 Marketing, #12 Milestones |
| R9 | **Differentiate from *Fractured Blooms*** in every public asset: beauty/self-image theme, black/white/red pen-and-ink, K-culture | #2 Moodboard, #16 Marketing |
| R10 | Track the watchlist monthly (Am I Nima, Lacey's Flash Games, Fractured Blooms, Neverway) | Ongoing PM task |

---

## 12. Limitations & open research to-dos

- [ ] Manually check **SteamDB** (followers, peak CCU) for the top 10 comps. Automated access isn't allowed.
- [ ] Check **Gamalytic / Sensor Tower VGI** revenue estimates for 5 key comps (paid data).
- [ ] Review counts are **English only**; Asian-market titles are under-counted.
- [ ] Twitch only. **YouTube / TikTok** view data not yet collected (key channels for P1/P2).
- [ ] Verify Korea cosmetic-surgery statistics against **ISAPS** or peer-reviewed sources before public use.
- [ ] Interview 5–8 people matching P1–P3 to validate the personas (lightweight user research).
