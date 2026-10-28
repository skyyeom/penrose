# Act 0 Quiz: Psychological Design

> **Part of:** GDD (#4) · **Implements:** PRD P0 #1 (Act 0 personality quiz) and #2 (quiz-weighted rooms) · **Status:** v4, owner's question set · **Last updated:** 28 Oct 2026
>
> **Question this doc answers:** how does the opening quiz quietly find out **whose approval matters most** to the player, while feeling like a random, harmless personality quiz, for male and female players alike?
>
> **v4 changes:** "Instagram notifications" → "Phone notifications"; postcard "A trophy" → "A magazine cover"; animal question removed; new painting question added; every question now cites the psychology behind it.

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

Asking directly ("Whose approval matters to you?") gets the answer people *want* to give: **social desirability bias**. Indirect questions about objects, sounds and scenes get closer to the truth. Fisher (1993) found that indirect questioning **reduced social desirability bias** on sensitive topics and had no effect on neutral ones.

Each answer is a **symbol** for what an approval source offers:

| Source | What it offers | Symbols used |
| --- | --- | --- |
| **Family** | Care, history, being looked after | Sunny windowsill · someone cooking breakfast · photo albums · the hallway of an old house · a long table raising a glass |
| **Close** | Being known by a few | Living-room coffee table · a voice message · handwritten notes · above someone's bed · an inside joke |
| **Society** | Performance, position, being on time | Office lobby · your alarm · your first name badge · a company boardroom · a city skyline |
| **Social Media** | Being seen by many | A café · phone notifications · all your old phones · a gallery with a line out the door · a magazine cover |

---

## 3. The questions

Answers are shown **without** their hidden meaning, and **in shuffled order**, so the room order never repeats across questions.

| # | Question (player sees) | Answers → hidden scoring | Psychology basis |
| --- | --- | --- | --- |
| **Q1** | *If you were a houseplant, where would you want to be placed?* | A. On a sunny windowsill → **Family** · B. On the living room coffee table → **Close** · C. In the lobby of an office building → **Society** · D. In a café → **Social Media** | Need to belong; Self-Determination Theory (relatedness) |
| **Q2** | *Which sound would you most like to wake up to?* | A. Someone cooking breakfast → **Family** · B. A voice message → **Close** · C. Your alarm → **Society** · D. Phone notifications → **Social Media** | Social reward; attachment |
| **Q3** | *You find a dusty box in an attic. What do you hope is inside?* | A. Photo albums → **Family** · B. Handwritten notes → **Close** · C. Your first name badge → **Society** · D. All your old phones → **Social Media** | The extended self; autobiographical memory |
| **Q4** | *If you were a painting, where would you want to hang?* | A. In the hallway of an old house → **Family** · B. Above someone's bed → **Close** · C. In a company boardroom → **Society** · D. In a gallery with a line out the door → **Social Media** | The looking-glass self; reflected appraisals |
| **Q5** | *You're sending a postcard to your future self. What's on the front?* | A. A long table with everyone raising a glass → **Family** · B. An inside joke → **Close** · C. A city skyline → **Society** · D. A magazine cover → **Social Media** | Possible selves; the miracle question |
| **Q6** | *Did you answer all the questions truthfully?* | A. Yes · B. No | Careless-response and social-desirability checks |

**Length:** 6 screens, about 1–2 minutes. **Also recorded, never shown:** how long each answer took (feeds the tie-break rule and the in-game choice timer).

### 3.1 Why each question works

**Q1 · Houseplant: where you'd flourish.** A plant only thrives where its needs are met, so "where would you want to be placed?" is a projective way of asking *where do you feel you'd grow?* Baumeister & Leary's **need to belong** (1995) shows that wanting close, lasting relationships is a basic human motivation, and Deci & Ryan's **Self-Determination Theory** (2000) names *relatedness* as one of three core psychological needs. The four answers are four different settings where people look for that relatedness: being cared for at home, being close to a few, being part of an institution, or being seen by a crowd.

**Q2 · Wake-up sound: what feels rewarding first.** The first sound you'd want to hear is the cue your mind treats as most rewarding. Sherman et al. (2016) scanned teenagers' brains while they viewed their own photos with many "likes", and found strong activity in the **nucleus accumbens**, a core reward region. Notifications are a learned social-reward cue. Someone cooking for you is a **caregiving** cue, in the sense of Bowlby's attachment theory (1969). A voice message is a sign of closeness, and an alarm signals duty and being on time (achievement).

**Q3 · Attic box: where identity is stored.** Belk's **extended self** theory (1988) shows that people treat treasured possessions as parts of who they are, and that losing them can feel like losing part of yourself. Which object you hope to find shows whose story you see yourself in: family history (photo albums), close bonds (handwritten notes), your working identity (a name badge), or your public image (old phones full of photos). Treasured objects also tend to be **memory cues** for the self-defining memories people keep returning to (Conway & Pleydell-Pearce, 2000).

**Q4 · Painting: whose gaze defines you.** Cooley's **looking-glass self** (1902) says we come to see ourselves as we imagine others see us. Felson (1985) studied these **reflected appraisals** and found that people's self-views follow how they *believe* specific others see them. Where a painting hangs decides who looks at it every day. The question asks, indirectly, whose eyes the player most wants to be seen through. That's the game's own question: *Beauty is in the eye of the beholder, but whose eyes?*

**Q5 · Postcard: the future self you're working toward.** Markus & Nurius's **possible selves** (1986) are images of who we hope to become, and they guide what people do now. A postcard from the future is a light version of the solution-focused **miracle question** (de Shazer, 1988): picture life when things are good and say what you see. The scene the player picks shows which kind of success they're chasing: belonging at the family table, an inside joke with their people, a career view of the city, or public recognition.

**Q6 · Honesty check.** Surveys use a "did you answer honestly?" question to flag careless or performed answers (Meade & Craig, 2012). It's a weak check on its own (most people say yes), and people tend to describe themselves favorably (**social desirability**; Crowne & Marlowe, 1960). In Penrose its main job is the story moment (§4.3).

---

## 4. Scoring

### 4.1 Approval profile → room loudness

Each of Q1–Q5 gives **1 point** to one source (5 points total). Example:

| Answers | Family | Close | Society | Social Media |
| --- | --- | --- | --- | --- |
| Windowsill · Cooking · Name badge · Old house · Long table | **4** | 0 | 1 | 0 |
| Loudness | **Loudest** | Quiet | Medium | Quiet |

- **Loudest room** = the most points. Louder means more frequent, more intense and more personal demands from that room.
- A room with 0 points still pressures the player, just less.

### 4.2 Ties

With five points across four sources, the only possible tie for first place is **2–2–1**.
- **2–2 tie:** both rooms are loud, and the source picked **fastest** is the slightly louder of the two (quick answers reflect more automatic preferences).

### 4.3 Honesty question (Q6)

| Answer | Effect on scoring | Story effect |
| --- | --- | --- |
| **Yes** | Profile used as is | Loop 3, the Reflection: *"You said you were honest. Were you?"* |
| **No** | The loudest room is decided in Loop 1 by where the player spends the most time; starting Authenticity −1 | Loop 3, the Reflection: *"You lied on the first page. Who were you answering for?"* |

**Answer-timing check:** if most answers took under about 1 second (likely random clicking), treat the profile as if Q6 were **No**.

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
| **Appearance ideal** (leaner, stronger, flawless skin, sharper features) | The first "upgrade" the player picks at the Loop 1 makeover | First upgrade path, for either protagonist (§6) |
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

- **The first upgrade path is chosen in play**, at the Loop 1 makeover, and any path is open to either protagonist. A female protagonist can chase "stronger"; a male protagonist can chase "leaner". The SATAQ-4R measures thin and muscular ideals separately because men and women report both. In a study of Korean undergraduates, media pressure mattered most for both; family and media predicted the drive for thinness in women, and peer appearance talk and media predicted the drive for muscularity in men (*IJERPH*, 2020).
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

## 8. How we'll check it works (feeds #15)

- **The disguise holds:** ≤ 20% of first-time playtesters guess what the quiz measures before the ending.
- **The symbols carry the right meaning:** after playing, testers rank the four sources directly ("whose opinion matters most to you?"). Their quiz result should match their top source for most testers. Rewrite any question whose answers don't line up.
- **Different results feel different:** testers with different loudest rooms describe the game differently.
- **The reveal feels fair:** ≥ 70% say the ending summary felt accurate; ≤ 15% say it felt invasive.

---

## Sources

**Framework**
- Thompson, J. K., Heinberg, L. J., Altabe, M., & Tantleff-Dunn, S. (1999). *Exacting Beauty: Theory, Assessment, and Treatment of Body Image Disturbance.* APA. (Tripartite Influence Model)
- Schaefer, L. M., et al. (2017). Development and validation of the Sociocultural Attitudes Towards Appearance Questionnaire-4-Revised (SATAQ-4R). *International Journal of Eating Disorders*, 50(2), 104–117. [PubMed](https://pubmed.ncbi.nlm.nih.gov/27539814/)
- Fisher, R. J. (1993). Social desirability bias and the validity of indirect questioning. *Journal of Consumer Research*, 20(2), 303–315. [doi:10.1086/209351](https://doi.org/10.1086/209351)

**Per question**
- Q1: Baumeister, R. F., & Leary, M. R. (1995). The need to belong. *Psychological Bulletin*, 117(3), 497–529. · Deci, E. L., & Ryan, R. M. (2000). The "what" and "why" of goal pursuits. *Psychological Inquiry*, 11(4), 227–268.
- Q2: Sherman, L. E., Payton, A. A., Hernandez, L. M., Greenfield, P. M., & Dapretto, M. (2016). The power of the like in adolescence. *Psychological Science*, 27(7), 1027–1035. [APS](https://www.psychologicalscience.org/journals/psychological-science/0956797616645673/) · Bowlby, J. (1969). *Attachment and Loss, Vol. 1: Attachment.* Basic Books.
- Q3: Belk, R. W. (1988). Possessions and the extended self. *Journal of Consumer Research*, 15(2), 139–168. · Conway, M. A., & Pleydell-Pearce, C. W. (2000). The construction of autobiographical memories in the self-memory system. *Psychological Review*, 107(2), 261–288.
- Q4: Cooley, C. H. (1902). *Human Nature and the Social Order.* Scribner's. · Felson, R. B. (1985). Reflected appraisal and the development of self. *Social Psychology Quarterly*, 48(1), 71–78.
- Q5: Markus, H., & Nurius, P. (1986). Possible selves. *American Psychologist*, 41(9), 954–969. · de Shazer, S. (1988). *Clues: Investigating Solutions in Brief Therapy.* Norton.
- Q6: Meade, A. W., & Craig, S. B. (2012). Identifying careless responses in survey data. *Psychological Methods*, 17(3), 437–455. [doi:10.1037/a0028085](https://doi.org/10.1037/a0028085) · Crowne, D. P., & Marlowe, D. (1960). A new scale of social desirability independent of psychopathology. *Journal of Consulting Psychology*, 24(4), 349–354.

**Context**
- Sociocultural influences, drive for thinness, drive for muscularity, and body dissatisfaction among Korean undergraduates (2020). *IJERPH*, 17(14), 5260. [MDPI](https://www.mdpi.com/1660-4601/17/14/5260)
- Yonhap News TV (23 Sep 2026). Chuseok surveys by Gayeon and PMI. [Link](https://www.yonhapnewstv.co.kr/news/AKR20260923144828D5J)
- The Korea Times (5 Jul 2017). Korea begins blind hiring for all public jobs. [Link](https://www.koreatimes.co.kr/southkorea/society/20170705/korea-begins-blind-hiring-for-all-public-jobs)
- American Psychological Association. *Ethical Principles of Psychologists and Code of Conduct*, Standard 8.07.
