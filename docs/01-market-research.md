# 01 · Market Research: Penrose

> **Issue:** #1 · **Phase:** 1 – Discovery · **Status:** Draft v2 · **Data snapshot:** 27 Oct 2026 (during Steam Scream Fest)
>
> **Question this doc answers:** *Is there a market for Penrose, who is it for, what are they playing right now, and where is the gap we can own?*
>
> **Penrose in one line:** a hand-drawn (black/white/red pen-and-ink) psychological horror game that presents itself as a harmless character-customization / self-improvement game. Every "improvement" is really self-destruction, every choice locks in permanently, and the choices decide which of four endings she reaches.

---

## 0. TL;DR

1. **Indie new IP is growing fast.** Sep 2025 – Aug 2026: indie breakouts rose **13 → 33** year on year, and 53% of all breakouts were the first game in a new series ([Sensor Tower](https://sensortower.com/blog/indie-and-new-ip-break-out-without-denting-aaa)).
2. **"Harmless-looking game that turns out to be horror" is a proven, still-rising formula.** The surface varies (dating sim in *DDLC*, care-sim in *MiSide*, desktop pet in *KinitoPET*, edutainment in *Endacopia*, the #1 streaming breakout in our set at 295k Twitch hours in 30 days). Penrose's surface is a **character-customization / self-improvement game**, a version nobody has commercialized except *Money for Girls*.
3. **Penrose's exact shelf is almost empty.** Of ~16,000 *Psychological Horror* games on Steam, only **12** also carry *Character Customization + Choices Matter + Multiple Endings + Female Protagonist*, and the only notable one is *Money for Girls: Amortized* (98%). With *Hand-drawn* instead of *Character Customization*, it's **72**. On itch.io, only **19** projects are tagged *Horror + Dress-up*, all free jam games.
4. **The theme has a precedent and a clear "how not to".** *Consume Me* (eating disorder + strict parenting, semi-autobiographical) won the **IGF 2025 Grand Prize**. *Project Makeover*'s "ugly → fixed" ads were ruled **harmful** by US and UK ad regulators.
5. **Cultural specificity sells.** *Until Then* (Filipino), *1000xRESIST* (Hong Kong diaspora), *Laughing to Die* (Chinese folklore), *Sweet Home* (Chinese school pressure) and *Detention* (Taiwan) all succeeded *because* they're specific. Korean-made narrative horror is under-represented (*Who's at the door?*, *The Coma 2*, *White Day*).
6. **The closest threat is *Fractured Blooms*** (Serenity Forge, TBA): "cozy life-sim in a horror time-loop" with body-horror imagery. Its announcement trailer has 1.7M YouTube views.
7. **What players want:** to be "misled in the best way", a mirror held up to themselves, **2–5 h**, replay value with choices that really change the outcome, **content warnings and an intensity option**, and mechanics that *are* the theme.
8. **Realistic target:** a **niche hit** (1–2k reviews ≈ 30–60k copies ≈ $0.4–0.8M gross at $12.99). Breakouts happen when a mega-creator plays the game (CoryxKenshin, Markiplier) or fans make music about it (DDLC's "Just Monika" has 66M views).

---

## 1. Method & sources

| Source | What we pulled | Data file |
|---|---|---|
| **Steam Store** (official store pages and search) | Price, release date, developer, platforms, tags, English review count and %, reviews in the last 30 days, Korean support; tag-intersection counts; a **full scan of 2024, 2025 and 2026 releases** in Penrose's tags (186 + 248 titles); *Most Wishlisted* upcoming games | [`steam-comparables.csv`](01-market-research-data/steam-comparables.csv), [`steam-upcoming-watchlist.csv`](01-market-research-data/steam-upcoming-watchlist.csv) |
| **Steam "Most Helpful" reviews** | Player review text for 12 comparables | Quoted in §8 |
| **itch.io** | Top sellers, top rated, and new & popular lists for 9 tag combinations | [`itch-snapshot.csv`](01-market-research-data/itch-snapshot.csv) |
| **SullyGnome** (Twitch) | 30-day hours watched, viewers, streamers; year-to-date peak | [`twitch-sullygnome.csv`](01-market-research-data/twitch-sullygnome.csv) |
| **YouTube** (public search, sorted by views) | Top videos and view counts per game | [`youtube-top-videos.csv`](01-market-research-data/youtube-top-videos.csv) |
| **HowLongToBeat, Wikipedia, publisher/press reports** | Playtime, platforms, team size, reported sales milestones | Linked inline in §3.3 |
| **Sensor Tower** (2026 breakout report) · **How To Market A Game** (benchmarks) · **Euromonitor** (K-beauty) | Market-level benchmarks | Linked inline |

**How sales are estimated (the "Boxleiter method"):** `copies ≈ English reviews × 30` (realistic range ×20–×50). Games with large Asian or Russian audiences (*MiSide*, *Sweet Home*, *Needy Streamer*, *Tiny Bunny*) are **under**-estimated, because only English reviews are counted. Where a studio has published real sales numbers, we use those instead.

**Velocity** = reviews in the last 30 days ÷ all reviews. It shows whether a game is rising *now*. It only means something for games out for more than about 30 days.

---

## 2. Market overview

### 2.1 How crowded is each shelf? (Steam, all listed games, 27 Oct 2026)

| Steam tag intersection | Games | Of which upcoming |
|---|---:|---:|
| Horror | 23,484 | 2,286 |
| Psychological Horror | 15,993 | 1,715 |
| + Story Rich *(Steam's closest tag to "Narrative")* | 6,822 | 847 |
| + Choices Matter | 2,873 | 411 |
| + Choices Matter + Multiple Endings | 1,845 | 268 |
| + Hand-drawn | 1,002 | 123 |
| + Choices Matter + Multiple Endings + Hand-drawn | 251 | 40 |
| + Choices Matter + Multiple Endings + Hand-drawn + Female Protagonist | **72** | 10 |
| + Character Customization | 365 | 39 |
| + Character Customization + Hand-drawn | 16 | 2 |
| **+ Character Customization + Choices Matter + Multiple Endings + Female Protagonist** *(Penrose's core mechanic shelf)* | **12** | **1** |

*Note: the Character Customization lists include mis-tagged AAA games (e.g. NBA 2K27). Among the 12, the only well-known title is* Money for Girls: Amortized.

On **itch.io**: ~22k *psychological horror* projects, 8.4k *horror + visual novel*, 1.8k *horror + female protagonist*, 664 *horror + hand-drawn*, 284 *mental health + horror*, 209 *body horror*, and **19 *horror + dress-up*** (all free).

> **PM note:** the broad genre is crowded, but Penrose's exact combination barely exists. A specific niche is how small games get discovered. It also gives Penrose the exact Steam tags to use (→ #16).

### 2.2 Market signals

- **Indie new IP is breaking out more than ever.** 76 launches sold 500k+ units in their first 30 days (up from 55). Indie breakouts went 13 → 33; 27 of 35 new-IP breakouts were indie ([Sensor Tower, 2026](https://sensortower.com/blog/indie-and-new-ip-break-out-without-denting-aaa)).
- **Horror is the most creator-driven genre.** §3.5 shows almost every comparable broke out through a creator video, fan music or an analysis essay.
- **Seasonality:** Steam **Next Fest (19–26 Oct 2026)** ran straight into **Scream Fest (26 Oct – 2 Nov 2026)**. October is the year's horror peak.
- **Audience:** women are about 48% of all players, and narrative/VN audiences skew female. The beauty/body-image theme speaks to an audience horror usually under-serves.

---

## 3. Competitive analysis

### 3.1 Recent comparables (released 2024–2025)

Selected from a scan of **186 Steam games released in 2024–25** tagged Psychological Horror × {Choices Matter + Multiple Endings, Hand-drawn, Female Protagonist, Cute, Visual Novel} with 300+ reviews.

| Game | Developer | Released | Price | EN reviews (%) | Est. copies (×20–×50) | Last 30 days (velocity) | Twitch hours, 30 days | Korean | Why it matters to Penrose |
|---|---|---|---|---|---|---|---|---|---|
| Mouthwashing | Wrong Organ | Sep 2024 | $12.99 | 24,954 (95%) | **800k+ reported** | 366 (1.5%) | 42k | ✅ | Short (2.5 h); **complicity** theme: "a mirror held up to yourself" |
| MiSide | AIHASTO (2 people) | Dec 2024 | $14.99 | 26,193 (97%) | 524k–1.3M | 1,021 (3.9%) | 55k | ✅ | **Cute care-sim → horror.** Players asked for a *Peaceful Mode* |
| KinitoPET | troy_en | Jan 2024 | $5.99 | 9,256 (93%) | 185k–463k | 127 (1.4%) | 7k | — | Cute 2000s desktop pet → horror. **Fan songs have 34M+ YouTube views** |
| Paper Lily – Chapter 1 | Leef 6010 | Jan 2024 | Free | 4,867 (98%) | 97k–243k players | 119 (2.4%) | n/a | — | Free first chapter of an episodic game; girl protagonist; puzzles solvable in different ways |
| Sucker for Love: Date to Die For | Akabaka | Apr 2024 | $12.99 | 1,203 (95%) | 24k–60k | 11 (0.9%) | 2k | — | **Hand-drawn** cute dating sim → horror; Choices Matter + Multiple Endings |
| The NOexistenceN of you AND me | 0x0Real | Dec 2024 | $1.99 | 5,444 (95%) | 109k–272k | 417 (**7.7%**) | 1k | ✅ | Cute VN horror at $1.99; still rising |
| Folie Fatale | Kanmidoko | May 2024 | $5.99 | 2,666 (85%) | 53k–133k | 60 (2.3%) | <1k | — | Female-protagonist otome × psych horror with branching endings |
| **Consume Me** | Jenny Jiao Hsia, AP Thomson + 3 | Sep 2025 | $14.99 | 1,093 (91%) | 22k–55k | 24 (2.2%) | n/a | — | **IGF 2025 Grand Prize.** Semi-autobiographical eating disorder + strict-parenting life-sim. **The closest theme precedent** |
| Until Then | Polychroma | Jun 2024 | $19.99 | 9,710 (97%) | 194k–486k | 405 (4.2%) | 11k | — | Specifically Filipino setting → 9.7k reviews. **Cultural specificity sells** |
| 1000xRESIST | sunset visitor | May 2024 | $19.99 | 4,796 (96%) | 96k–240k | 76 (1.6%) | 4k | ✅ | Hong Kong-diaspora identity story with a female protagonist |
| Laughing to Die | 大吉利制作组 | Apr 2024 | $4.99 | 3,156 (96%) | 63k–158k | 33 (1.0%) | <1k | — | Hand-drawn horror built on Chinese funeral folklore |
| **Who's at the door?** | **SKONEC (Korea)** | Jul 2025 | $4.99 | 1,507 (89%) | 30k–75k | 18 (1.2%) | n/a | ✅ | **Korean studio**; psychosis horror while trapped in a house |
| No, I'm not a Human | Trioskaz | Sep 2025 | $14.99 | 10,204 (93%) | 204k–510k | 709 (6.9%) | 131k | ✅ | Choice-driven paranoia; CoryxKenshin's videos have 21M + 11M views |
| Look Outside | Francis Coulombe (solo) | Mar 2025 | $9.99 | 10,022 (98%) | 200k–501k | 474 (4.7%) | 144k | — | One developer at $9.99 → about 300k copies |
| Sweet Home | 开心茶房 | Aug 2025 | $7.99 | 10,453 (94%) | 209k–523k | 447 (4.3%) | 1k | ✅ | Chinese school VN about **family and peer pressure** |
| Saihate Station | びぶ/viv | Mar 2025 | Free | 3,244 (97%) | 65k–162k players | 290 (8.9%) | 0 | ✅ | Free hand-drawn psych-horror VN about a codependent relationship |
| Cabernet | Party for Introverts | Feb 2025 | $19.99 | 1,460 (94%) | 29k–73k | 52 (3.6%) | 11k (peak 12k) | — | Female protagonist whose **choices shape who she becomes**; hand-drawn |
| and Roger | TearyHand | Jul 2025 | $4.99 | 1,368 (96%) | 27k–68k | 118 (8.6%) | 24k | ✅ | Hand-drawn life-sim + psych horror about **family** |
| Class of '09: The Flip Side | SBN3 | Sep 2024 | $9.99 | 3,170 (**56%**) | 63k–158k | 26 (0.8%) | 2k | — | ⚠️ Mixed reviews for a female-protagonist post-graduation choices VN. Study its negative reviews before borrowing its format |

### 3.2 Rising now (2026 and late-2025 releases with momentum)

| Game | Developer | Released | Price | EN reviews (%) | Est. copies | Last 30 days (velocity) | Twitch hours, 30 days | Korean | Signal for Penrose |
|---|---|---|---|---|---|---|---|---|---|
| **Endacopia** | Andyland | Jul 2026 | $16.50 | 6,829 (98%) | 137k–341k | 1,094 (16%) | **295k** | — | Cute edutainment look → horror. **#1 streaming breakout**. Markiplier: "BEST GAME IN YEARS" (5.7M views) |
| **lily's world XD** | SonderingEmily | Sep 2026 | $11.99 | 1,603 (97%) | 32k–80k | 501 (**31%**) | 121k (peak 14k) | — | A teen girl's 2004 laptop and diary. **Fastest-rising.** Earlier free/web builds already had 2.8M-view creator videos |
| **Money for Girls: Amortized** | Porpentine | Aug 2026 | $15.00 | 1,250 (98%) | 25k–62k | 368 (29%) | 9k | — | **Fashion + stickers + character customization + body horror + multiple endings.** Closest *mechanic + theme* match; built on the creator's own community, not YouTube |
| Desktop Explorer | Recurring Dream | Jul 2026 | $17.99 | 1,780 (96%) | 36k–89k | 323 (18%) | 32k | — | "Found PC" horror played through an in-game desktop |
| AI2U: With You 'Til The End | AlterStaff | Aug 2026 | $14.99 | 1,074 (88%) | 21k–54k | 242 (23%) | n/a | — | Cute anime → yandere horror |
| Yunyun Syndrome!? Rhythm Psychosis | Alliance Arts | Apr 2026 | $16.99 | 1,558 (90%) | 31k–78k | 196 (13%) | n/a | ✅ | Online-poster girl + psychosis; the *Needy Streamer* formula still sells |
| Tiny Bunny | Saikono | Dec 2025 | $10.99 | 1,003 (81%) | 20k–50k | 184 (18%) | 7k | — | Non-linear horror VN with a big non-English audience |
| Z.A.T.O. // I Love the World… | Ferry // Nopanamaman | Nov 2025 | Free | 6,981 (98%) | 140k–349k players | 810 (12%) | n/a | — | Free psych-horror VN, also on itch.io's *New & Popular*. **Free can build a big audience** |

### 3.3 Genre classics (pre-2024): platform, playtime, team, and how they spread

| Game | Released · price · EN reviews | Platforms | HLTB main / 100% | Team & publisher | How it spread | Reported sales |
|---|---|---|---|---|---|---|
| **Doki Doki Literature Club** (+ Plus!) | 2017 free · Plus! 2021 $14.99 · 11,371 (97%) | PC/Mac/Linux, Switch, PS, Xbox; mobile in 2025–26 (pulled from Google Play over content policy, Apr 2026) | 4 h / 7.5 h | Solo (Dan Salvato) + 2 freelance artists; Plus! with Serenity Forge | **Free launch**; bait-and-switch reveal made for reaction videos; **fan music** ("Just Monika" 66M YouTube views) | 30M players (Dec 2024); Plus! 1M (Feb 2023) |
| **Inscryption** | 2021 · $19.99 · 76,972 (96%) | PC/Mac/Linux, PS, Switch, Xbox | 13 h / 32 h | Solo (Daniel Mullins); Devolver Digital | Existing fanbase from *Pony Island*; real-world ARG; GDCA Game of the Year | 1M+ (Jan 2022) |
| **OMORI** | 2020 · $19.99 · 54,610 (97%) | PC/Mac, Switch, PS4, Xbox (delisted 2023) | 21.5 h / 71 h | Omocat + small team; self-published | 2014 Kickstarter (~10× goal) → **6.5 years of hype**; creator's existing art/fashion fanbase; **OST/fan songs** (15M+ views) | 1M (Dec 2022) |
| **NEEDY STREAMER OVERLOAD** | 2022 · $15.99 · 18,018 (95%) | PC/Mac, Switch, PS4/5 | 3 h / 12 h (22+ endings) | Small team (xemono); WSS playground / Alliance Arts | Japan launch week; China (51% of sales by 2023); **theme song "INTERNET YAMERO" 65M views**; 2026 anime | 3M+ (Nov 2025) |
| **Slay the Princess** | 2023 · $17.99 · 24,221 (97%) | PC/Mac/Linux, Switch, PS, Xbox | 3.5 h / 18 h | 2 people (Black Tabby Games); self-published | Mailing list from their earlier game; **Markiplier** (5M views, ep. 1); awards (Metacritic 90) | 1M (Feb 2026) |
| **The Exit 8** | 2023 · $3.99 · 5,288 (93%) | PC, Switch, PS, Xbox, **iOS, Android**, VR | 40 min / 1 h | Solo (Kotake); ports by Playism | "TikTok's first hit game"; Japanese influencers; spawned a copycat genre; live-action film | 3M (Sep 2026) |
| **The Coffin of Andy and Leyley** | 2023 · $11.99 · 19,135 (95%) | Windows only | ~4 h / ~10 h (early access) | Solo writer/artist (Nemlei); Kit9 Studio | **Taboo-theme controversy** drove visibility; fan art communities | Not published |
| **Fran Bow** | 2015 · $14.99 · 8,531 (96%) | PC/Mac/Linux, **iOS/Android**, Switch/PS4/Xbox | 7.6 h / 8.8 h | 2 people (Killmonday); self-published | Indiegogo; **Markiplier** playthrough (2015) | Not published |
| **Little Misfortune** | 2019 · $19.99 · 5,601 (90%) | PC/Mac/Linux, **iOS/Android**, consoles | 3 h / 4.9 h | Same 2-person Killmonday team | Fran Bow fanbase carry-over | Not published |
| **Who's Lila?** | 2022 · $11.99 · 1,851 (95%) | Windows only | 2 h / 6.5 h | Solo (Garage Heathen); IndieArk co-publisher | Memeable **face-manipulation** mechanic; **Jacob Geller essay** (2.8M views) | Not published |

*Sources: HowLongToBeat, Wikipedia, Game Developer, Gematsu, Automaton, Bloody Disgusting, Nintendo Everything (links in the research log).*

### 3.4 Upcoming games to watch (Steam *Most Wishlisted*)

| Game | Developer | Planned | Why we care | Threat |
|---|---|---|---|---|
| **Fractured Blooms** | Serenity Forge | TBA | "Cozy life-sim in a horror time-loop… plates of her legs." Harmless life-sim surface + loop + body horror. Announcement trailer 1.7M views | 🔴 **High.** Closest concept, with an experienced publisher (DDLC Plus!, Slay the Princess consoles) |
| **Am I Nima** | HO! Games | 27 Nov 2026 | Hand-drawn: *"convince your mom you really are her daughter."* Mother/daughter identity pressure | 🟠 Medium. Benchmark its launch |
| **Lacey's Flash Games** | ghosttundra | 27 Oct 2026 | *"These are the REAL girls' games"*: 2000s girls' Flash/dress-up games hiding horror | 🟠 Medium. Same "girly game → horror" hook |
| **HABROMANIA** | Sydney Collings | TBA | 19-year-old Alice in a "surreal, cozy hellscape"; female solo developer | 🟡 Low–Medium |
| **Neverway** | Coldblood Inc. | 2027 | Life-sim + psychological horror, hand-drawn | 🟡 Low–Medium |
| **Tulpa the Unseen Lover** | Horse Position | TBA | "Create yourself a perfect friend… don't let her turn your life into a living hell" | 🟡 Low–Medium |
| **Shutter Story** | Frostwood | Q1 2027 | Photo editing as a horror mechanic (relevant to Penrose's camera/filter symbols) | 🟢 Low |

> **PM note:** record *Am I Nima* and *Lacey's Flash Games* review counts at 7 and 30 days after launch. They're the best near-term predictors for a Penrose-like launch.

### 3.5 What made them spread (synthesis)

| Driver | Examples | Lesson for Penrose |
|---|---|---|
| **Mega-creator Let's Play** | Mouthwashing (CoryxKenshin 24.7M views), No I'm not a Human (21M), Endacopia (Markiplier 5.7M), MiSide (Jazzghost 8.9M), Slay the Princess (Markiplier 5M) | Build a **blind-playable, 2–4 h** game with a reveal that *reads on camera* |
| **Fan music** | "Just Monika" 66M, "INTERNET YAMERO" 65M, KinitoPET songs 34M, OMORI OST 15M | Penrose's **distorted K-pop soundtrack** can be its own marketing channel. Make a catchy theme |
| **Analysis essays** | Who's Lila? (Jacob Geller 2.8M), Inscryption (ARG) | Layer symbolism (rose, gumiho, Penrose stairs) and hidden systems (quiz weighting) for essayists |
| **Free entry point** | DDLC (free), Paper Lily Ch. 1, Z.A.T.O., Saihate Station, lily's world's earlier web builds | A **free itch.io slice** builds the audience before the paid Steam launch |
| **Long pre-launch community** | OMORI (6.5-yr Kickstarter), Slay the Princess (mailing list), Money for Girls (creator's community) | Start the **devlog now** |
| **International creators** | Mouthwashing: Kiyo (JP) 6.1M; Endacopia: Indonesian creator 3.1M; Until Then: Thai creator 1.8M | Localize early (KO, JP, zh, ID/TH later) |
| **Controversy** | The Coffin of Andy and Leyley | ⚠️ Works, but is a risk we should **not** court on a sensitive theme |

### 3.6 Competitive positioning map

```
               DISGUISED AS ANOTHER GENRE (deceptive surface)
                                  ▲
       Lacey's Flash Games ·      │      · DDLC · Needy Streamer
          Money for Girls ·       │      · MiSide · KinitoPET · Endacopia
                                  │
     ★ PENROSE (gap)              │          · Fractured Blooms
   "self-improvement" sim,        │
   beauty / self-image,           │
   choices → endings, KR          │
  PERSONAL / ◄────────────────────┼────────────────────► GENRE /
  SOCIAL THEME                    │                     SUPERNATURAL THEME
                                  │
  Consume Me · Am I Nima          │      · Slay the Princess
  Mouthwashing · and Roger        │      · The Exit 8 · Look Outside
                                  │
                                  ▼
                         OVERTLY DARK FROM MINUTE 1
```

**The gap:** a game disguised as **harmless self-improvement / character customization** whose horror is **social and personal** (beauty standards; family, peer and online pressure), where **choices decide the ending**, told from a **Korean** lived perspective.

---

## 4. itch.io landscape

| List | What's there | Takeaway |
|---|---|---|
| Psych horror, **top rated** | *last seen online* (a stranger's computer), *Prescription:LOVE*, *Online Obsession*, *Do NOT Take This Cat Home*: free, short, mostly VNs | itch.io players want **free, short, shareable** horror |
| Psych horror, **new & popular** | *Z.A.T.O.*, *Breadwinner* ("horrors of a family living on one salary"), *Revelations* ("become pure"), *Quiet Care* | **Domestic and social horror** is trending |
| **Horror + dress-up (19 total)** | *Kawaii Dress Up Game!* ("Something is off…"), *Dress Me Down*, *Killer Couture*, *Sick Fashion*, *DOLLGAME* | **The hook is proven in jam form; nobody has built the full game** |
| Body horror (209) | *Cursed Escape* ("a curse slowly morphs your body"), *GUTLESS* | Transformation body horror has a dedicated audience |
| Horror + hand-drawn (664) | **LiminAce** dominates (*Bedrot*, *So Perfect I Could Eat You Up*, *Dress Me Down*) | A creator to study, or a cross-promotion partner |
| Mental health + horror (284) | *Milk inside a bag of milk…*, *Lynne* | Small but loyal; values sensitivity |

---

## 5. Cultural angle

### 5.1 K-beauty and Korean culture

- **K-beauty reached a $15B online market in 2025 (+22% YoY).** The **US is 54%** of overseas online sales, Western Europe grew from 3% to 10%, and **TikTok Shop** is now the #7 US beauty retailer ([Euromonitor, Aug 2026](https://www.euromonitor.com/newsroom/press-releases/august-2026/k-beauty-global-growth-beauty-market-2026)). Penrose's core audience (US, TikTok, young women) overlaps directly with the K-beauty consumer.
- **The real-world premise is widely documented:** Korea has one of the highest cosmetic-procedure rates per person in the world, surgery as a graduation gift is a well-reported phenomenon, and appearance-based discrimination (*외모지상주의*, "lookism") is an active public debate. *(Use peer-reviewed or ISAPS figures before quoting numbers publicly.)*
- **Most top comparables already ship in Korean** (Mouthwashing, MiSide, OMORI, Slay the Princess, Inscryption, DDLC+, Needy Streamer), so Korean players expect it. A **native Korean script** is an advantage few competitors can match.

### 5.2 How games have handled body image, eating disorders and beauty

| Game | How it handles the theme | Reception | Lesson |
|---|---|---|---|
| **Consume Me** (2025) | Calorie-counting mini-games *are* the gameplay; semi-autobiographical; dark comedy with strict parenting | **IGF 2025 Grand Prize**, 91% on Steam | ✅ Personal + mechanic-as-theme works, with critics and players |
| **Money for Girls: Amortized** (2026) | Fashion, stickers, customization, explicit body horror, upfront content warning | 98% on Steam | ✅ Players accept graphic body horror **when warned** |
| **Pocket Mirror ~ GoldenerTraum** (2023) | Mirror and self-image symbolism in a fairy-tale RPG | 92% | ✅ Symbolic approach |
| itch.io: *Shrinking Pains*, *eating disorder*, *All Foods Fit* | Interactive poetry and branching ED narratives; one is a "can't lose" recovery game | Small, community-only | Recovery framing exists but lacks a polished commercial version |
| itch.io: *Beauty Doctor AI* | Satirical cosmetic-surgery sim scored by the "golden ratio" | No coverage | The satire is easy to misread. **Tone must be unmistakable** |
| 🚩 **Project Makeover** (mobile ads) | Ads ridiculed "ugly" women until they were "fixed" | **Ruled harmful** by US NAD/BBB (2023) and UK ASA (2025) | ❌ Penrose's marketing must **never** look like "ugly → fixed" played straight |
| 🚩 **Kids' "plastic surgery" apps** | Surgery sims played straight for kids | Pulled by Apple and Google under "negative self-image" policies; #SurgeryIsNotAGame petition (~128k signatures) | ❌ **Mobile store policy risk.** Store pages must frame Penrose as critique, with an age rating |

### 5.3 Culturally specific Asian horror that travelled

| Game | Culture | Why the specificity helped |
|---|---|---|
| *Detention* / *Devotion* (Red Candle) | Taiwan: White Terror era, folk religion | "Familiar and novel" to Western players; critics called *Devotion* among the finest horror of the decade *(Devotion was later pulled from Steam over a political controversy)* |
| *White Day* | Korea: school horror | Korean players recognized their own schools; others found it fresh |
| *Paranormasight* · *Yomawari* | Japan: real urban legends, yōkai | Grounded in real folklore instead of generic jump-scares |
| *Until Then* · *Laughing to Die* · *1000xRESIST* · *Sweet Home* (2024–25) | Philippines · Chinese funerals · HK diaspora · Chinese schools | All 94–97% positive, thousands of reviews (§3.1) |

> **Takeaway:** the more specifically Korean Penrose is (graduation-gift surgery, subway ads, Gangnam clinics, family dynamics, the gumiho myth), the *more* international interest it's likely to get.

---

## 6. Distribution: platforms & creator appeal

| Channel | Evidence | Role for Penrose |
|---|---|---|
| **Steam (PC/Mac)** | Every comparable launched here first; wishlists, Next Fest and Scream Fest all live here | **Primary launch platform** (paid) |
| **itch.io** | 19 horror dress-up projects, all free; free web VNs dominate the top-rated lists | **Free prototype / demo** ("Act 0 quiz + first room"), community building, game jams |
| **Consoles** (Switch/PS/Xbox) | DDLC+, OMORI, Slay the Princess, Fran Bow, Exit 8 all ported **after** PC success, often via a porting publisher (Serenity Forge, Playism) | **Post-launch** if PC succeeds |
| **Mobile** (iOS/Android) | Fran Bow, Little Misfortune and The Exit 8 run as premium mobile games; DDLC was **pulled from Google Play** over content policy (2026); kids' surgery apps were removed for "negative self-image" | **Later, with care.** Plan for store-policy review |
| **YouTube** | Mega-creator Let's Plays (5–25M views), fan music (34–66M), essays (~3M); see §3.5 | **#1 discovery channel.** Pitch horror Let's Players and essayists |
| **Twitch** | Endacopia 295k hrs/30 days; No I'm not a Human 131k; Mouthwashing 42k | Live reactions; aim for **"spot what changed" loops** that chat can play along with |
| **TikTok** | The Exit 8 was "TikTok's first hit game"; K-beauty's growth runs through TikTok Shop | Short clips of the **makeover → mutilation** reveal; K-beauty audience crossover |

---

## 7. Current trends

| # | Trend | Evidence (Oct 2026) | Penrose fit |
|---|---|---|---|
| 1 | **Disguised-genre horror** (looks like a harmless game, turns out to be horror) | DDLC, MiSide, KinitoPET (dating/care/pet); Endacopia (edutainment); Money for Girls (fashion/customization); Lacey's Flash Games, Fractured Blooms (2026) | ⭐⭐⭐ Core hook; Penrose's version is **self-improvement / customization** |
| 2 | **Diegetic interface horror** (desktops, laptops, phones) | lily's world XD (31% velocity), Desktop Explorer, KinitoPET, *last seen online*, Needy Streamer | ⭐⭐⭐ **Social Media Room** as a fake phone/feed |
| 3 | **Loops and anomalies** | The Exit 8 (3M sold), Slay the Princess, Fractured Blooms | ⭐⭐⭐ Penrose stairs loop + visual decay |
| 4 | **Life-sim / cozy × horror** | Consume Me, and Roger, Neverway, Fractured Blooms | ⭐⭐ Makeover/life-sim surface |
| 5 | **Personal and identity horror, often by women and queer creators** | Consume Me (IGF), Money for Girls, Am I Nima, 1000xRESIST | ⭐⭐⭐ Lived experience is a selling point |
| 6 | **Culturally specific Asian narratives** | Until Then, Sweet Home, Laughing to Die, Saihate Station, Who's at the door? | ⭐⭐⭐ Korean voice is under-represented |
| 7 | **Choices that change the ending** | 1,845 Psych Horror games tagged Choices Matter + Multiple Endings; Needy Streamer has 22+ endings; Slay the Princess | ⭐⭐⭐ Penrose's 4 endings + quiz-weighted rooms |
| 8 | **Short and cheap** | Main stories: Mouthwashing 2.5 h, Slay the Princess 3.5 h, Needy Streamer 3 h, MiSide 4 h, DDLC 4 h | ⭐⭐⭐ Fits a small team |
| 9 | **Free first, paid later** | DDLC, Paper Lily Ch. 1, Z.A.T.O., Saihate Station | ⭐⭐ Free itch.io slice → Steam |

---

## 8. User wants (from Steam player reviews)

| What players say | Game | Requirement for Penrose (→ #3 PRD) |
|---|---|---|
| *"Scary, unpredictable, and **misleading (in the best way possible!)**"* | DDLC+ | The "self-improvement game" surface must be **convincing**; the reveal must feel earned |
| *"A terrifying **mirror held up to** ego, control… forced me to look in the mirror at the ways I might be doing the same thing"* | Mouthwashing | **The player must realize *they* did it** |
| *"The story **MUST be played blind**"* · *"stays with you for life"* | Mouthwashing | Marketing must sell the mood **without spoiling the twist** |
| *"**The gameplay actually reflects** the dark underbelly"* | Needy Streamer | Mechanics are the theme (masks lock in, undo window, quiz weighting) |
| *"Near infinite **replayability**… peeling back layers"* | Who's Lila? | **Choices and quiz weighting must produce visibly different runs and endings** |
| *"Not very long, but that's **a good thing for the pacing**"* | Little Misfortune | **2–5 h** first playthrough |
| *"Mr. Voice… was **so irritating**… the reason I kept taking breaks"* | Little Misfortune (negative) | Use the Reflection's voice **sparingly**; playtest it |
| *"My only complaint is that **Peaceful Mode** still hasn't been released"* | MiSide | **Intensity / body-horror opt-out setting** |
| *"You probably should **read the content warning**"* | Money for Girls | Clear content warnings up front |
| *"Can't even be played in **full screen** properly"* | Who's Lila? | Basic polish (resolution, settings, accessibility) |
| *"Secrets for the third ending can be **pretty cryptic**"* | Endacopia | Hidden endings should be findable without a wiki, or deliberately not |
| *"Bought it after watching Flaw(ed) Peacock's **deconstruction of the plot**"* | Who's Lila? | Design for analysis content |

---

## 9. Target audience: personas

### P1 · "The Lore Diver" (primary)
- **Age 17–28, any gender.** Plays DDLC, OMORI, Slay the Princess, Who's Lila?, Inscryption.
- Watches video essays; reads ending wikis; **replays to see every ending**.
- **Wants:** a twist, hidden systems, choices that really change the outcome, symbols to decode.
- **Penrose hook:** *"The opening quiz secretly decided which rooms hurt you most, and your choices decided how she ends."*
- **Where:** YouTube, Reddit, Discord, Steam.

### P2 · "The Dark-Aesthetic Dress-Up Fan" (primary)
- **Age 15–25, mostly women and non-binary players.** Plays Needy Streamer, Money for Girls, itch.io horror dress-up games, Lacey's Flash Games; follows webtoons.
- Loves striking, dark visual styles (webtoon/anime linework, limited palettes); posts clips on TikTok; buys cheap or plays free. Often a K-beauty and K-pop consumer.
- **Wants:** a distinctive aesthetic, character customization, a shareable "wait, WHAT" moment.
- **Penrose hook:** *a character-customization game where every "upgrade" is secretly mutilation.*
- **Where:** TikTok, Tumblr, itch.io, X/Bluesky, Pinterest.

### P3 · "The Meaning Seeker" (secondary)
- **Age 22–35.** Played Mouthwashing, Consume Me, 1000xRESIST, GRIS, Fran Bow. Often has lived experience with body image, family pressure or dysmorphia. Includes Korean and Asian-diaspora players.
- **Wants:** to feel understood; a story that "stays with me"; respect for the subject.
- **Penrose hook:** *made by someone who lived it*; content warnings; an ending with a path to recovery.
- **Where:** Steam reviews, Bluesky, diaspora communities, Korean communities.

### Channel persona · "The Horror Let's Player / Essayist"
- Needs a **≤ 4 h, blind-playable** game with a twist chat can scream at, plus "spot what changed" moments for chat to join in.
- Penrose's gaslighting loop ("New room discovered!" for the fifth time) and visual decay are made for this.

---

## 10. SWOT

| **Strengths** | **Weaknesses** |
|---|---|
| Lived experience + a specifically Korean angle no competitor has | First-time, small team; hand-drawn art × per-loop variants × branching endings multiplies assets (→ #13) |
| Fits the #1 rising pattern (disguised-genre horror) **and** sits on an almost empty shelf (12 games with its core tags; one notable competitor) | No existing audience or devlog yet |
| Choices that permanently lock in + four endings = built-in replay value and "which ending did you get?" talk | Sensitive topic: needs care, playtesting and possibly expert consultation |
| A simple visual identity (black/white/red pen-and-ink) that stands out in thumbnails | Theme may read as "not for me" to some male horror players |
| **Opportunities** | **Threats** |
| Indie new-IP breakouts doubled in 2026 | ***Fractured Blooms*** may launch first with a similar loop/life-sim/body-horror pitch |
| K-beauty ($15B, US-led, TikTok-driven) and Korean-culture interest | *Am I Nima* and *Lacey's Flash Games* fill nearby shelf space in late 2026 |
| Creator ecosystem (Let's Plays, fan music, essays) | **Platform policy:** Google Play pulled DDLC; app stores ban "negative self-image" apps; YouTube monetization limits on self-harm imagery |
| Korean is already expected; JP and zh audiences proven by Sweet Home, Saihate Station and Needy Streamer | **Marketing backlash** if anything looks like "ugly → fixed" (the Project Makeover precedent) |
| Scream Fest and Halloween every year | Scope creep pushing launch past the trend window |

---

## 11. Opportunity sizing & benchmarks

### 11.1 Scenarios (assumed price $12.99)

| Scenario | Comparable tier | EN reviews | Est. copies (×30) | Gross revenue | ≈ Net to developer* |
|---|---|---:|---:|---:|---:|
| **Miss** | most Steam releases | < 100 | < 3k | < $39k | < $20k |
| **Niche hit** *(realistic target)* | Sucker for Love 2, Cabernet, Consume Me, Who's at the door?, lily's world XD | 1k–2k | 30k–60k | $390k–$779k | ~$195k–$390k |
| **Breakout** | Until Then, KinitoPET, Look Outside, No I'm not a Human | 5k–10k | 150k–300k | $1.9M–$3.9M | ~$1.0M–$1.9M |
| **Viral outlier** | Mouthwashing (800k+ reported), MiSide, Slay the Princess (1M) | 20k+ | 600k+ | $7.8M+ | ~$3.9M+ |

\*Net ≈ 50% of gross after Steam's 30% cut, discounts, regional pricing, refunds and taxes. A rough rule of thumb.

### 11.2 Wishlist & follower benchmarks

| Benchmark | Value | Source |
|---|---|---|
| Wishlists at launch, by success tier | 🥉 5k · 🥈 8k · 🥇 50k · 💎 90k | [How To Market A Game](https://howtomarketagame.com/benchmarks/) (updated Jun 2026) |
| First-week wishlist → sales conversion | ~20% median (5k–40k wishlists); lower in recent years as festivals inflate wishlists | How To Market A Game / GameDiscoverCo |
| Wishlists gained in one Steam Next Fest | 🥉 0–999 · 🥈 1k–7k · 🥇 7k–10k · 💎 10k+ | How To Market A Game (Feb 2026) |
| Good median demo playtime | 🥈 18 min · 🥇 38 min | How To Market A Game |
| Followers → wishlists | Roughly 7–20 wishlists per Steam follower (rule of thumb) | Indie marketing guides |

**Proposed targets (→ #3 PRD, #16 Marketing):** **10k wishlists by launch** (between the silver and gold tiers), a **Next Fest demo** with ≥ 30 min median playtime, a **1k-review** niche hit in year one, **EN + KO** at launch, **$9.99–$14.99**.

---

## 12. Positioning statement

> **For** narrative-horror players (*DDLC*, *Mouthwashing*, *Slay the Princess*, *Money for Girls*)
> **who** want their choices to really matter, and a twist that's about something real,
> **Penrose is** a hand-drawn psychological horror game disguised as a character-customization / self-improvement game,
> **that** makes every "improvement" you choose lock in, reshape her body, and decide which of four endings she reaches.
> **Unlike** other disguised-genre horror games, **it** has no supernatural monster: the horror is beauty standards and the people who love you pushing you toward them, told from a Korean woman's lived experience.

**Elevator pitch:** *"It's a makeover game. The house won't let you leave. Every choice you make is permanent, and the mirror is starting to show what you've done."*

---

## 13. Recommendations → inputs for the next docs

| # | Recommendation | Goes to |
|---|---|---|
| R1 | Own the niche: **psych horror × hand-drawn × disguised as self-improvement / customization × choices that decide the ending × beauty/self-image × Korean voice** | #3 PRD |
| R2 | **2–5 h**, **$9.99–$14.99**, **Steam first**, **EN + KO** at launch; consoles and mobile after launch | #3 PRD |
| R3 | **Intensity / body-horror toggle** + upfront **content warnings** | #3 PRD, #4 GDD |
| R4 | Make choice consequences **visible**: different endings, room weighting and decay per run (the replay-value driver) | #4 GDD |
| R5 | **Social Media Room as an in-game phone/feed UI** (trend #2) | #4 GDD |
| R6 | Use the **Reflection's voice sparingly**; playtest for annoyance | #4 GDD, #15 Playtest |
| R7 | Treat the **distorted K-pop theme song** as a marketing asset (fan-music lesson) | #4 GDD, #16 Marketing |
| R8 | **Never** market with "ugly → fixed" imagery played straight (Project Makeover ruling) | #16 Marketing |
| R9 | **Devlog now** (Scream Fest week) → **free itch.io slice** → **Steam page + Next Fest demo** | #16 Marketing, #12 Milestones |
| R10 | Stand apart from *Fractured Blooms* in every public asset: beauty theme, black/white/red pen-and-ink, K-culture | #2 Moodboard, #16 Marketing |
| R11 | Success metrics: wishlists, demo playtime, completion rate, **ending distribution**, creator coverage | #3 PRD → #10 Telemetry |
| R12 | Track the watchlist monthly (Am I Nima, Lacey's Flash Games, Fractured Blooms, Neverway) | Ongoing PM task |

---

## 14. Limitations & next research

- Review-based sales estimates count **English reviews only**, so Asian-market titles are under-counted.
- YouTube and Twitch figures are a single snapshot (27 Oct 2026); TikTok views were not measured.
- Korean cosmetic-surgery figures need peer-reviewed or ISAPS sources before public use.
- **Next:** interview people matching P1–P3 to validate the personas. Kit: [player research](01-player-research/README.md) (#28). Detailed personas: [User Persona Profiles](01-user-personas.md) (#26).
