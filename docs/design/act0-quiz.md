# Act 0 Quiz: Psychological Design

> **Part of:** GDD (#4) · **Implements:** PRD P0 #1 (Act 0 personality quiz) and #2 (quiz-weighted rooms) · **Status:** Draft v2 for discussion · **Last updated:** 27 Oct 2026
>
> **Question this doc answers:** what should the opening quiz ask so that it quietly finds out **whose approval matters most** to the player, **what they value**, and **how they react to criticism**, while feeling like a random, harmless personality quiz? It must work for male and female players alike.
>
> **v2 changes:** questions are now indirect (no mention of parents, friends, work or followers); rooms updated to Family, Friends & Partner, Society, Social Media + Bathroom; added a final yes/no honesty question.

---

## 1. The rooms are a psychology model

Body-image research's leading framework, the **Tripartite Influence Model** (Thompson et al., 1999), says appearance pressure comes mainly from **family, peers and media**. Its standard questionnaire, the **SATAQ-4R** (Schaefer et al., 2017), adds **significant others** (romantic partners). Penrose adds two pressures that are especially strong in Korea: **extended family** and **the workplace**.

| Approval source (what the quiz measures) | Who it covers | Room | Research and real-world basis |
| --- | --- | --- | --- |
| **Family** | Parents, siblings, **extended family** (aunts, uncles, grandparents at holidays) | **Family Room** | Tripartite model and SATAQ-4R "family" pressure. Korea: in a Sep 2026 survey of 1,000 adults (PMI), "excessive interference and personal questions from relatives" was the #1 holiday custom people want changed (48.5%); being compared with siblings was the most common holiday topic (27.9%). In another survey, appearance and weight comments were among the most-hated holiday nagging (13%) |
| **Close** | Friends **and a significant other** | **Friends & Partner Room** | Tripartite "peers" + SATAQ-4R "significant others". The two overlap in real life (friends judge your partner; partners compare you to friends) |
| **Society** | **Coworkers**, bosses, interviewers, teachers, people who judge you "professionally" | **Society Room** | Lookism in hiring: in 2017, most Korean private employers still required resume photos, and Korea banned photos in public-sector hiring ("blind hiring") because of appearance discrimination. Works for a graduation-age protagonist: first jobs, part-time jobs, interviews |
| **Social Media** | Followers, strangers, the algorithm | **Social Media Room** | Tripartite "media" pressure; the strongest predictor of body dissatisfaction for both men and women in a study of Korean undergraduates (*IJERPH*, 2020) |
| **Self** | The protagonist's own standards | **Bathroom** | Not a source of outside pressure. A high Self score is *protective* (more starting Authenticity). The Bathroom is where the protagonist checks their appearance and status in the mirror between rooms; it's where internalized standards ("those standards are *mine* now") show up |

**Bathroom as the self-check hub.** Between rooms, the protagonist can stop in the Bathroom to check their appearance and their "status" (how each room currently sees them). It's diegetic UI: the mirror *is* the stats screen. Over the loops the mirror stops showing what the player wants to see.

---

## 2. Why indirect questions

Asking directly ("Whose approval matters to you?") gets the answer people *want* to give. This is **social desirability bias**. Psychology has two well-tested ways around it:

- **Indirect (projective) questions.** People reveal more when they answer about a character, an object or a scenario instead of about themselves. Fisher (1993) found indirect questioning **reduced social desirability bias** on sensitive topics and changed nothing on neutral ones. Projective methods like sentence completion and "pick a picture" are long-standing tools in psychological assessment.
- **Many small items instead of one big one.** Each answer is only a weak signal, but adding up several questions gives a reliable picture. This is how every validated questionnaire works.

**Design rules for every question**
1. Never mention parents, relatives, friends, partners, work, school, followers or social media.
2. Every question must look like it's about taste, imagination or a small everyday moment.
3. Each answer is a **symbol** for one approval source (e.g. a windowsill in a grandparent's house = Family).
4. Every approval source is scored by **at least four questions**.
5. Gender-neutral wording; no question about eating, weight or body numbers.

---

## 3. What the quiz measures

| # | Construct | Values | Research basis | Drives |
| --- | --- | --- | --- | --- |
| **A** | **Whose approval matters** | Family · Close · Society · Social Media · Self | SATAQ-4R pressure sources; Contingencies of Self-Worth (Crocker et al., 2003) | **Room loudness** |
| **B** | **What you value** | Relationships · Achievement/Status · Appearance · Recognition · Independence | Contingencies of Self-Worth; Schwartz's values | What each room *promises* in exchange for an upgrade |
| **C** | **How you react to criticism** | Internalize · Comply · Defend · Avoid · Self-compassion | Self-Compassion Scale (Neff, 2003); Fear of Negative Evaluation (Leary, 1983); body-dysmorphia safety behaviors (Wilhelm, Phillips & Steketee, 2013) | **How NPCs pressure you** (§6.2) |
| **D** | **Which appearance ideal you've absorbed** | Leaner · Stronger · Flawless skin · Sharper features · Taller · Not appearance-focused | SATAQ-4R internalization; Drive for Muscularity Scale (McCreary & Sasse, 2000) | **First upgrade path** |
| **E** | **Self-checking and comparison** | Low → high | Physical Appearance Comparison Scale-R (Schaefer & Thompson, 2014); body surveillance (McKinley & Hyde, 1996) | Starting Self-Perception; how often the Bathroom "calls" you |
| **F** | **Core belief** | not good enough · unlovable · a burden · invisible · a fake | CBT downward arrow (Beck; Burns); Young schemas (defectiveness, approval-seeking, social isolation) | What **the Reflection** says in Loops 3–4 |
| **G** | **Baseline self-image** | 0–10 | Solution-focused scaling question | Starting Self-Perception; asked again at the ending |
| **H** | **Answer style** (observed, never asked) | Answer time, changed answers | Impulsivity (concept doc); "doubts about actions" (Frost perfectionism scale) | Starting values for the in-game choice timer and undo window |
| **I** | **Honesty** | Yes / No | Careless-response and social-desirability checks (Meade & Craig, 2012; Marlowe & Crowne, 1960) | Confidence in the profile; a story beat (§5) |

---

## 4. The questions

All wording is original. Answers are shown **without** their hidden meaning; the arrows below are only for us. Display order of answers is shuffled.

| # | Question (player sees) | Answers → hidden scoring | Technique · Construct |
| --- | --- | --- | --- |
| **Q1** | *If you were a houseplant, where would you want to live?* | On a sunny windowsill in an old house where someone waters you every morning → **Family** · On the desk of someone who talks to you while they draw → **Close** · In the lobby of a tall glass building → **Society** · In a café that everyone photographs → **Social Media** · In a wild garden, growing however you like → **Self** | Projective symbol · **A** |
| **Q2** | *Which sound would you most like to wake up to?* | Someone cooking in the next room → **Family** · A voice message from someone who misses you → **Close** · Your alarm, exactly on time, nothing missed → **Society**, Achievement · A phone buzzing with notifications → **Social Media** · Rain, and nowhere you have to be → **Self** | Projective symbol · **A, B** |
| **Q3** | *You find a dusty box in an attic. What do you hope is inside?* | Old report cards someone kept all these years → **Family** · Notes folded into tiny squares → **Close** · Your first name badge → **Society** · An old phone full of photos → **Social Media** · A diary with a little lock → **Self** | Projective symbol · **A** |
| **Q4** | *Which animal would you be for a day?* | A deer → leaner · A tiger → stronger · A swan → flawless skin · A fox → sharper features · A giraffe → taller · A sloth → not appearance-focused | Projective symbol · **D**. *The fox quietly foreshadows the Gumiho* |
| **Q5** | *Right before you head out, you spill water on your clothes. You…* | Change into something else, even if it makes you late → **Comply** · Cancel; it's a sign → **Avoid** · Glare at the table like it did it on purpose → **Defend** · "Of course this happens to me" → **Internalize** · Dab it, laugh, go → **Self-compassion** | Everyday scenario · **C** |
| **Q6** | *You're alone in an elevator with mirrored walls. Where do your eyes go?* | Your reflection → high self-checking · The other reflections in the reflection → high comparison · Your phone → **Social Media**, low checking · The floor numbers → low · The floor → avoidance | Everyday scenario · **E** |
| **Q7** | *Ten years from now, you mail yourself a postcard. What's on the front?* | A long table, everyone raising a glass → **Family**, Relationships · An inside joke only a few people get → **Close**, Relationships · A city skyline seen from the top floor → **Society**, Achievement/Status · A crowd, and you on a stage → **Social Media**, Recognition · A small quiet place you chose yourself → **Self**, Independence | Miracle question, made indirect · **A, B** |
| **Q8** | *At a buffet, you…* | Glance at what everyone else picked first → high comparison · Take a photo before the first bite → **Social Media** · Let whoever you came with choose for you → **Close** · Do a full lap to find the very best option → perfectionism · Go straight for what you love → **Self**, low comparison | Everyday scenario · **A, E** |
| **Q9** | *In a story, the main character comes home after many years away. Who do they hope is waiting?* | An old woman on the porch → **Family** · Someone at the station with two coffees → **Close** · Someone who once said they'd never make it → **Society** · Half the town, phones out → **Social Media** · Nobody; they want to walk the streets alone first → **Self** | Projective story (about a character, not you) · **A** |
| **Q10** | *Which line in a movie would stay with you?* | "Look how well you turned out." → **Family** · "I'm always myself around you." → **Close** · "We could really use someone like you." → **Society**, Achievement · "Wait, everyone needs to see this." → **Social Media**, Appearance · "You seem at peace." → **Self** | Projective sentence · **A, B** |
| **Q11** | *A paper doll is left out in the rain. What is it most afraid of?* | Not being pretty enough to keep → **not good enough** · Nobody wanting to play with it → **unlovable** · Taking up space in the box → **a burden** · Being forgotten under the bed → **invisible** · Someone noticing it's only paper → **a fake** | Projective downward arrow · **F**. *Ties into the customization theme* |
| **Q12** | *If you took a selfie right now, how many stars would you give it?* | 0–10 slider | Scaling question · **G** |
| **Q13** | *One last thing. Did you answer honestly?* | **Yes** · **No** | Honesty check · **I** (see §5) |

**Length:** 13 screens, about 3–4 minutes (within PRD P0 #1's ≤ 5 min).

**Coverage check (approval sources):** Family Q1, Q2, Q3, Q7, Q9, Q10 (6) · Close Q1, Q2, Q3, Q7, Q8, Q9, Q10 (7) · Society Q1, Q2, Q3, Q7, Q9, Q10 (6) · Social Media Q1, Q2, Q3, Q6, Q7, Q8, Q9, Q10 (8) · Self Q1, Q2, Q3, Q7, Q8, Q9, Q10 (7).

**Why the symbols are believable:** they follow what each source *offers*. Family = care, history, being kept (windowsill, report cards, the porch). Close = being known by a few (notes, inside jokes, two coffees). Society = performance and position (glass lobby, name badge, top floor). Social Media = being seen by many (photographed café, notifications, crowd). Self = choosing for yourself (wild garden, diary, a place you chose).

---

## 5. The honesty question (Q13)

**Why ask it:** online surveys use a "did you answer honestly?" item to catch careless or performed answers (Meade & Craig, 2012). On its own it's a weak check, since most people say "yes", so Penrose uses it alongside answer timing (H). A simple **Yes / No** is enough: the point is the moment of being asked, not a precise measurement.

**What it does in the game:**

| Answer | Effect on scoring | Story effect |
| --- | --- | --- |
| **Yes** | Profile used as is | The Reflection can quote it back in Loop 3: *"You said you were honest. Were you?"* |
| **No** | Profile weights softened 30% toward even; starting Authenticity −1 | The mask started before the house did. The Reflection in Loop 3: *"You lied on the first page. Who were you answering for?"* |

**Answer-timing check:** if most answers took under about 1 second, profile weights are also softened (likely random clicking).

**At the ending**, the summary shows the player's Yes or No next to what their choices actually revealed. Penrose asks the question every approval-seeker faces: *were you answering as yourself, or as who you thought you should be?*

---

## 6. Scoring

### 6.1 Approval profile → room loudness

- Add up each source's points, soften them if Q13 is **No** (§5), and normalize to percentages that sum to 100%. Example: **Family 35% · Society 25% · Social Media 20% · Close 15% · Self 5%**.
- **Room loudness** follows the four outside sources (Family, Close, Society, Social Media). Louder means more frequent, more intense and more personal demands.
- **Self** raises starting **Authenticity** and doesn't make any room louder.
- **Ties:** if the top two outside sources are within 10 points, both rooms are "loud".

### 6.2 Criticism style → how NPCs pressure you

| Player's style | What the NPCs do (all four rooms) |
| --- | --- |
| **Internalize** | Quiet disappointment: "We're not angry. We just expected more." |
| **Comply** | Small, reasonable requests that keep escalating: "That's good, but what about…" |
| **Defend** | Guilt: "After everything we've done for you." |
| **Avoid** | Exclusion: plans made without you, messages left on read |
| **Self-compassion** | Gaslighting: "You're being stubborn. You *know* we're right." |

### 6.3 Starting stats

| Hidden stat | Starting value comes from |
| --- | --- |
| **Self-Perception** | Q12, lowered by high self-checking and comparison (Q6, Q8) |
| **Authenticity** | Self score + self-compassion (Q5); −1 if Q13 is No |
| **Exhaustion** | 0 for everyone |

### 6.4 What carries forward

| Quiz result | Used later |
| --- | --- |
| Appearance ideal (Q4) | First upgrade path offered, for either protagonist |
| Core belief (Q11) | The Reflection's lines in Loops 3–4 |
| Baseline (Q12) | Asked again in the Bathroom mirror each loop and at the ending |
| Honesty (Q13) | Quoted back by the Reflection in Loop 3, and shown in the ending summary |
| Approval profile | Ending summary: "whose approval you were chasing" |

---

## 7. Male and female protagonists

The quiz is **identical for everyone**, and the player picks the protagonist **after** the quiz.

- **Ideals differ on average, not by rule.** The SATAQ-4R measures the thin and muscular ideals separately because both men and women report both. In a study of Korean undergraduates, media pressure mattered most for both; for women, family and media predicted the drive for thinness, and for men, peer appearance talk and media predicted the drive for muscularity (*IJERPH*, 2020).
- **The animal (Q4) picks the first upgrade path for either protagonist.** A female protagonist can chase "stronger"; a male protagonist can chase "leaner".
- **The rooms need son and daughter variants.** Family: "You'd be so pretty if…" / "Stand up straight, you look short in photos." Society: "Clients like a clean, fresh look." Friends & Partner: comparisons with exes and friends' partners.
- **Every upgrade path needs a Loop 3 reveal.** The concept doc covers weight loss, skin bleaching and facial surgery. Muscle and height paths need equivalents (e.g. limb-lengthening surgery is real, and so is steroid harm).

---

## 8. Ethics and safety rules

1. **It's not a diagnosis.** Inspired by validated instruments but not one; Penrose never tells players they have a disorder.
2. **No questions about eating, weight or body numbers.**
3. **No clinical screening items**, even reworded.
4. **Debrief at the end.** Psychology research that uses deception must debrief participants afterward (APA Ethics Code, Standard 8.07). The ending summary explains what each question really measured and links to support resources (PRD P0 #9).
5. **Quiz data stays on the device** unless the player opts in to anonymous telemetry.
6. **Original wording only**; nothing copied from copyrighted questionnaires.

---

## 9. Open decisions

| # | Decision | Recommendation |
| --- | --- | --- |
| D1 | How detailed is the ending reveal? | A few plain-language lines, with a "see details" button for the full breakdown |
| D2 | Does the Bathroom mirror repeat the 0–10 question each loop? | **Yes**, framed as the protagonist rating themselves in the mirror |
| D3 | Can players retake the quiz on replay? | **Yes**. A different loud room is a reason to replay |
| D4 | Show the answer options as pictures instead of text? | **Yes, where possible** (hand-drawn icons). Pictures are faster and feel even more random |

## 10. How we'll check it works (feeds #15)

- **The disguise holds:** ≤ 20% of first-time playtesters guess what the quiz measures before the ending.
- **The symbols carry the right meaning:** after playing, testers rank the five sources directly ("whose opinion matters most to you?"). Their quiz profile should match the top source for most testers. If a question's answers don't line up, rewrite that question.
- **Different profiles feel different:** testers with opposite profiles name different "loudest" rooms.
- **The reveal feels fair, not creepy:** ≥ 70% say the ending summary felt accurate; ≤ 15% say it felt invasive.

---

## Sources

- Thompson, J. K., Heinberg, L. J., Altabe, M., & Tantleff-Dunn, S. (1999). *Exacting Beauty.* APA. Tripartite Influence Model.
- Schaefer, L. M., et al. (2017). Development and validation of the SATAQ-4R. *International Journal of Eating Disorders*, 50(2). [PubMed](https://pubmed.ncbi.nlm.nih.gov/27539814/)
- Fisher, R. J. (1993). Social desirability bias and the validity of indirect questioning. *Journal of Consumer Research*, 20(2), 303–315. [doi:10.1086/209351](https://doi.org/10.1086/209351)
- Meade, A. W., & Craig, S. B. (2012). Identifying careless responses in survey data. *Psychological Methods*, 17(3), 437–455. [doi:10.1037/a0028085](https://doi.org/10.1037/a0028085)
- Crowne, D. P., & Marlowe, D. (1960). A new scale of social desirability independent of psychopathology. *Journal of Consulting Psychology*, 24(4).
- Crocker, J., et al. (2003). Contingencies of self-worth in college students. *JPSP*, 85(5). [Crocker Lab](https://www.asc.ohio-state.edu/psychology/crockerlab/csw.php)
- Neff, K. D. (2003). The development and validation of a scale to measure self-compassion. *Self and Identity*, 2(3).
- Leary, M. R. (1983). A brief version of the Fear of Negative Evaluation Scale. *PSPB*, 9(3).
- Schaefer, L. M., & Thompson, J. K. (2014). The Physical Appearance Comparison Scale-Revised. *Eating Behaviors*, 15(2).
- McKinley, N. M., & Hyde, J. S. (1996). The Objectified Body Consciousness Scale. *Psychology of Women Quarterly*, 20(2).
- McCreary, D. R., & Sasse, D. K. (2000). An exploration of the drive for muscularity in adolescent boys and girls. *Journal of American College Health*, 48(6).
- Wilhelm, S., Phillips, K. A., & Steketee, G. (2013). *Cognitive-Behavioral Therapy for Body Dysmorphic Disorder.* Guilford.
- Frost, R. O., et al. (1990). The dimensions of perfectionism. *Cognitive Therapy and Research*, 14.
- Burns, D. D. (1980). *Feeling Good.* (Downward arrow technique.) · de Shazer, S. (1988). *Clues.* (Miracle and scaling questions.)
- Young, J. E., Klosko, J. S., & Weishaar, M. E. (2003). *Schema Therapy.* Guilford.
- Sociocultural influences, drive for thinness, drive for muscularity, and body dissatisfaction among Korean undergraduates (2020). *IJERPH*, 17(14), 5260. [MDPI](https://www.mdpi.com/1660-4601/17/14/5260)
- Yonhap News TV (23 Sep 2026). Chuseok surveys by Gayeon (300 unmarried adults) and PMI (1,000 adults aged 20–68). [Link](https://www.yonhapnewstv.co.kr/news/AKR20260923144828D5J)
- The Korea Times (5 Jul 2017). Korea begins blind hiring for all public jobs. [Link](https://www.koreatimes.co.kr/southkorea/society/20170705/korea-begins-blind-hiring-for-all-public-jobs) · The World (17 Jul 2019). South Korea's new blind hiring law. [Link](https://theworld.org/stories/2019/07/17/south-koreas-new-blind-hiring-law-bans-personal-interview-questions)
- American Psychological Association. *Ethical Principles of Psychologists and Code of Conduct*, Standard 8.07.
