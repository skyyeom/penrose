# Act 0 Quiz: Psychological Design

> **Part of:** GDD (#4) · **Implements:** PRD P0 #1 (Act 0 personality quiz) and #2 (quiz-weighted rooms) · **Status:** v3, final question set chosen by the owner · **Last updated:** 28 Oct 2026
>
> **Question this doc answers:** how does the opening quiz quietly find out **whose approval matters most** to the player, while feeling like a random, harmless personality quiz, for male and female players alike?

---

## 1. The rooms are a psychology model

Body-image research's leading framework, the **Tripartite Influence Model** (Thompson et al., 1999), says appearance pressure comes mainly from **family, peers and media**. Its standard questionnaire, the **SATAQ-4R** (Schaefer et al., 2017), adds **significant others**. Penrose adds two pressures that are especially strong in Korea: **extended family** and **the workplace**.

| Approval source | Who it covers | Room | Research and real-world basis |
| --- | --- | --- | --- |
| **Family** | Parents, siblings, extended family | **Family Room** | Tripartite "family" pressure. Korea: in a Sep 2026 survey of 1,000 adults (PMI), "excessive interference and personal questions from relatives" was the #1 holiday custom people want changed (48.5%), and being compared with siblings was the most common holiday topic (27.9%) |
| **Close** | Friends and a significant other | **Friends & Partner Room** | Tripartite "peers" + SATAQ-4R "significant others" |
| **Society** | Coworkers, bosses, interviewers | **Society Room** | Lookism in hiring: in 2017 most Korean private employers still required resume photos, and Korea banned them in public-sector hiring ("blind hiring") |
| **Social Media** | Followers, strangers, the algorithm | **Social Media Room** | Tripartite "media" pressure; the strongest predictor of body dissatisfaction for both men and women in a study of Korean undergraduates (*IJERPH*, 2020) |
| *(Self)* | The protagonist's own standards | **Bathroom** | Not measured by the quiz. The Bathroom is where the protagonist checks their appearance and status in the mirror between rooms (§5) |

---

## 2. Why the questions look random

Asking directly ("Whose approval matters to you?") gets the answer people *want* to give: **social desirability bias**. Indirect questions about objects, sounds and scenes get closer to the truth. Fisher (1993) found that indirect questioning **reduced social desirability bias** on sensitive topics.

Each answer is a **symbol** for what an approval source offers:

| Source | What it offers | Symbols used |
| --- | --- | --- |
| **Family** | Care, history, being looked after | Sunny windowsill · someone cooking breakfast · photo albums · a long table raising a glass |
| **Close** | Being known by a few | Living-room coffee table · a voice message · handwritten notes · an inside joke |
| **Society** | Performance, position, being on time | Office lobby · your alarm · your first name badge · a city skyline |
| **Social Media** | Being seen, being counted | A café · notifications · all your old phones · a trophy |

---

## 3. The questions

Answers are shown **without** their hidden meaning, and **in shuffled order**, so the room order never repeats across questions.

| # | Question (player sees) | Answers → hidden scoring | Measures |
| --- | --- | --- | --- |
| **Q1** | *If you were a houseplant, where would you want to be placed?* | A. On a sunny windowsill → **Family** · B. On the living room coffee table → **Close** · C. In the lobby of an office building → **Society** · D. In a café → **Social Media** | Approval source |
| **Q2** | *Which sound would you most like to wake up to?* | A. Someone cooking breakfast → **Family** · B. A voice message → **Close** · C. Your alarm → **Society** · D. Instagram notifications → **Social Media** | Approval source |
| **Q3** | *You find a dusty box in an attic. What do you hope is inside?* | A. Photo albums → **Family** · B. Handwritten notes → **Close** · C. Your first name badge → **Society** · D. All your old phones → **Social Media** | Approval source |
| **Q4** | *Which animal would you want to be for a day?* | A. Deer → **leaner** · B. Tiger → **stronger** · C. Swan → **flawless skin** · D. Fox → **sharper features** | Appearance ideal → first upgrade path. *The fox quietly foreshadows the Gumiho* |
| **Q5** | *You're sending a postcard to your future self. What's on the front?* | A. A long table with everyone raising a glass → **Family** · B. An inside joke → **Close** · C. A city skyline → **Society** · D. A trophy → **Social Media** | Approval source |
| **Q6** | *Did you answer all the questions truthfully?* | A. Yes · B. No | Honesty check (§4.3) |

**Length:** 6 screens, about 1–2 minutes.

**Also recorded, never shown:** how long each answer took. It feeds the in-game choice timer and the tie-break rule (§4.2).

---

## 4. Scoring

### 4.1 Approval profile → room loudness

Each of Q1, Q2, Q3 and Q5 gives **1 point** to one source (4 points total). Example:

| Answers | Family | Close | Society | Social Media |
| --- | --- | --- | --- | --- |
| Windowsill · Cooking · Name badge · Long table | **3** | 0 | 1 | 0 |
| Loudness | **Loudest** | Quiet | Medium | Quiet |

- **Loudest room** = the most points. Louder means more frequent, more intense and more personal demands from that room.
- A room with 0 points still pressures the player, just less.

### 4.2 Ties

With only four scored questions, ties will be common (e.g. 2–2, or 1–1–1–1).
- **Two-way tie (2–2):** both rooms are loud.
- **Tie-break when needed:** the source picked **fastest** wins. Quick answers reflect more automatic preferences.
- **All different (1–1–1–1):** no room starts loud. In Loop 1 the room where the player spends the most time becomes the loudest from Loop 2.

### 4.3 Honesty question (Q6)

| Answer | Effect on scoring | Story effect |
| --- | --- | --- |
| **Yes** | Profile used as is | Loop 3, the Reflection: *"You said you were honest. Were you?"* |
| **No** | The loudest room is decided in Loop 1 by where the player spends the most time (as for 1–1–1–1); starting Authenticity −1 | Loop 3, the Reflection: *"You lied on the first page. Who were you answering for?"* |

Online surveys use a "did you answer honestly?" item to catch careless or performed answers (Meade & Craig, 2012). On its own it's a weak check, since most people say "yes"; in Penrose its main job is the story moment. **Answer-timing check:** if most answers took under about 1 second (likely random clicking), treat the profile as if Q6 were **No**.

### 4.4 Starting stats

| Hidden stat | Starting value |
| --- | --- |
| **Self-Perception** | Set by the player's own 0–10 rating at the **first Bathroom mirror visit** |
| **Authenticity** | Same for everyone; −1 if Q6 is No |
| **Exhaustion** | 0 |

---

## 5. Measured in play instead of in the quiz

Keeping the quiz short and disguised means some things are better measured by what the player **does**. Behavior is also more reliable than self-report.

| What | How it's measured in play | Drives |
| --- | --- | --- |
| **Criticism style** (internalize, comply, defend, avoid, self-compassion) | The response the player picks most often when first criticized in each Loop 1 room | How NPCs pressure the player from Loop 2 (below) |
| **Self-checking** | How often the player chooses to visit the Bathroom mirror between rooms | Self-Perception drops faster for frequent checkers |
| **Self-image** | The 0–10 mirror rating, first in Loop 1 and again each loop | Self-Perception; shown at the ending as before/after |
| **Core belief** (not good enough, unlovable, a burden, invisible, a fake) | What the player chooses when the Reflection first asks *"What are you afraid they'll find out?"* (Loop 2) | What the Reflection says in Loops 3–4 |
| **Impulsivity, risk, conformity, regret** | Choice timer and the undo window (concept doc) | Endings and stats |

**NPC tactics by criticism style** (from Loop 2; Loop 1 uses *Comply* for everyone):

| Player's style | What the NPCs do |
| --- | --- |
| Internalize | Quiet disappointment: "We're not angry. We just expected more." |
| Comply | Small, reasonable requests that keep escalating: "That's good, but what about…" |
| Defend | Guilt: "After everything we've done for you." |
| Avoid | Exclusion: plans made without you, messages left on read |
| Self-compassion | Gaslighting: "You're being stubborn. You *know* we're right." |

---

## 6. Male and female protagonists

The quiz is **identical for everyone**, and the player picks the protagonist **after** the quiz.

- **The animal (Q4) picks the first upgrade path for either protagonist.** A female protagonist can chase "stronger"; a male protagonist can chase "leaner". The SATAQ-4R measures thin and muscular ideals separately because men and women report both. In a study of Korean undergraduates, media pressure mattered most for both; family and media predicted the drive for thinness in women, and peer appearance talk and media predicted the drive for muscularity in men (*IJERPH*, 2020).
- **Four upgrade paths, each with a Loop 3 reveal:** leaner (weight loss → cutting away pieces of yourself), flawless skin (brightening → chemical burns and bleaching), sharper features (makeup and editing → surgical mutilation), and stronger (training → a reveal still to design, e.g. steroid damage or tearing muscle).
- **The rooms need son and daughter variants** (e.g. Family: "You'd be so pretty if…" / "Stand up straight, you look short in photos").

---

## 7. What the ending reveals

The ending summary acts as a **debrief**, as psychology research does after a deception (APA Ethics Code, Standard 8.07). It explains:
- what each answer meant (e.g. "You chose the sunny windowsill: you wanted to be looked after"),
- which room was loudest because of it,
- the player's Q6 answer next to what their choices revealed,
- their first and last mirror ratings,
- links to support resources (PRD P0 #9).

All quiz data stays on the player's device unless they opt in to anonymous telemetry.

---

## 8. Things to double-check

| # | Item | Why it matters | Suggestion |
| --- | --- | --- | --- |
| C1 | Q2 "Instagram notifications" | Names social media directly (the one obvious answer in the quiz) and uses a real brand name | "Phone notifications" or "Your phone buzzing nonstop" |
| C2 | Q5 "A trophy" → Social Media | A trophy usually reads as achievement (Society). Players who value achievement may pick it and get the wrong room | Something about being seen: "A crowd cheering your name" or "A magazine cover" |
| C3 | Only 4 scored questions | Ties will be frequent | Covered by §4.2; playtest how often ties happen |

## 9. How we'll check it works (feeds #15)

- **The disguise holds:** ≤ 20% of first-time playtesters guess what the quiz measures before the ending.
- **The symbols carry the right meaning:** after playing, testers rank the four sources directly ("whose opinion matters most to you?"). Their quiz result should match their top source for most testers. Rewrite any question whose answers don't line up.
- **Different results feel different:** testers with different loudest rooms describe the game differently.
- **The reveal feels fair:** ≥ 70% say the ending summary felt accurate; ≤ 15% say it felt invasive.

---

## Sources

- Thompson, J. K., Heinberg, L. J., Altabe, M., & Tantleff-Dunn, S. (1999). *Exacting Beauty.* APA. Tripartite Influence Model.
- Schaefer, L. M., et al. (2017). Development and validation of the SATAQ-4R. *International Journal of Eating Disorders*, 50(2). [PubMed](https://pubmed.ncbi.nlm.nih.gov/27539814/)
- Fisher, R. J. (1993). Social desirability bias and the validity of indirect questioning. *Journal of Consumer Research*, 20(2), 303–315. [doi:10.1086/209351](https://doi.org/10.1086/209351)
- Meade, A. W., & Craig, S. B. (2012). Identifying careless responses in survey data. *Psychological Methods*, 17(3), 437–455. [doi:10.1037/a0028085](https://doi.org/10.1037/a0028085)
- Sociocultural influences, drive for thinness, drive for muscularity, and body dissatisfaction among Korean undergraduates (2020). *IJERPH*, 17(14), 5260. [MDPI](https://www.mdpi.com/1660-4601/17/14/5260)
- Yonhap News TV (23 Sep 2026). Chuseok surveys by Gayeon and PMI. [Link](https://www.yonhapnewstv.co.kr/news/AKR20260923144828D5J)
- The Korea Times (5 Jul 2017). Korea begins blind hiring for all public jobs. [Link](https://www.koreatimes.co.kr/southkorea/society/20170705/korea-begins-blind-hiring-for-all-public-jobs)
- American Psychological Association. *Ethical Principles of Psychologists and Code of Conduct*, Standard 8.07.
