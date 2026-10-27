# Act 0 Quiz: Psychological Design

> **Part of:** GDD (#4) · **Implements:** PRD P0 #1 (Act 0 personality quiz) and #2 (quiz-weighted rooms) · **Status:** Draft for discussion · **Last updated:** 27 Oct 2026
>
> **Question this doc answers:** what should the opening quiz ask, grounded in real psychology and therapy, so that it quietly finds out **whose approval matters most** to the player, **what they value**, and **how they react to criticism**, while still feeling like a harmless personality quiz, for male and female players alike?

---

## 1. The big idea: Penrose is already a psychology model

Body-image research's leading framework, the **Tripartite Influence Model** (Thompson et al., 1999; van den Berg et al., 2002), says appearance pressure comes from three sources:

| Source of pressure (research) | Penrose room |
| --- | --- |
| **Family** | Parents' Room |
| **Peers** | Friends' Room |
| **Media** | Social Media Room |

Pressure from these sources leads to two internal processes, **internalization** ("those standards are *my* standards") and **appearance comparison**, which then lead to **body dissatisfaction**. The house's loop is a picture of that process. The questionnaire that measures it, the **SATAQ-4R** (Schaefer et al., 2017), adds a fourth source, **significant others** (romantic partners), which matches the concept doc's "romantic" approval category.

> **Design consequence:** the quiz should measure the same things the research measures: how much pressure the player feels from family, peers, media and partners, which appearance ideal they've absorbed, and how much they compare themselves. Then the rooms turn those numbers into gameplay.

---

## 2. What the quiz measures

| # | Construct | Values it can take | Research it's based on | What it drives in the game |
| --- | --- | --- | --- | --- |
| **A** | **Whose approval matters** | Family · Peers · Partner · Public (strangers, followers, media) · Self | SATAQ-4R pressure sources (family, peers, media, significant others); Contingencies of Self-Worth: "others' approval" and "family support" domains (Crocker et al., 2003) | **Room weighting**: which room is loudest |
| **B** | **What you value** | Appearance · Status · Achievement · Relationships · Independence | Contingencies of Self-Worth domains; Schwartz's Portrait Values Questionnaire (achievement, power, benevolence, self-direction, conformity) | What each room *promises* in exchange for an upgrade |
| **C** | **How you react to criticism** | Internalize (shame) · Comply (fix and hide it) · Defend (anger) · Avoid (withdraw) · Self-compassion | Self-Compassion Scale: self-judgment vs. self-kindness (Neff, 2003); Brief Fear of Negative Evaluation (Leary, 1983); body dysmorphia "safety behaviors" such as camouflaging and avoidance (Wilhelm, Phillips & Steketee, 2013) | **How NPCs pressure you** (see §5.2) |
| **D** | **Which appearance ideal you've absorbed** | Leaner · Stronger · Clearer skin · Sharper features · Taller · Not appearance-focused | SATAQ-4R internalization subscales: *thin/low body fat*, *muscular*, *general attractiveness*; Drive for Muscularity Scale (McCreary & Sasse, 2000) | **Which upgrade path** appears first |
| **E** | **Comparison and self-checking** | Low → high | Physical Appearance Comparison Scale-R (Schaefer & Thompson, 2014); body surveillance (Objectified Body Consciousness Scale, McKinley & Hyde, 1996); mirror checking in body dysmorphia | Starting **Self-Perception**; how often mirrors appear |
| **F** | **Core belief** (one sentence the player picks) | "not good enough" · "unlovable" · "a burden" · "invisible" · "a fake" | CBT *downward arrow* technique; Young Schema Questionnaire schemas: defectiveness/shame, approval-seeking, unrelenting standards, failure, social isolation | What **the Reflection** says to them in Loops 3–4 |
| **G** | **Baseline self-image** (0–10) | Number | Solution-focused *scaling question* | Starting **Self-Perception**; asked again at the ending to show change |
| **H** | **How they answer** (not asked; observed) | Answer time, answer changes | Impulsivity (concept doc); "doubts about actions" (Frost Multidimensional Perfectionism Scale) | Starting values for the in-game choice timer and undo-window measures |

Risk tolerance, social conformity and regret sensitivity are measured **in play** (choices and the undo window), not in the quiz.

---

## 3. Therapy techniques we borrow

These are real questioning techniques therapists use to get past people's "official" answers. Each one becomes one quiz question.

| Technique | Where it comes from | How therapists use it | How Penrose uses it |
| --- | --- | --- | --- |
| **Circular question** | Milan family therapy (Selvini Palazzoli et al., 1980) | Asks about *relationships* instead of feelings: "Who in the family notices first when…?" Reveals the hidden ranking of people's influence | "Whose reaction do you check first?" (Q2) |
| **Rejection-sensitivity scenario** | Rejection Sensitivity Questionnaire (Downey & Feldman, 1996) | A short everyday scenario, then "how worried would you be?" | The unread group chat (Q3) |
| **Portrait question** | Portrait Values Questionnaire (Schwartz) | "Here's a person. How much are they like you?" People reveal values more honestly about a "character" than about themselves | "Which of these people is most like you?" (Q1). Fits a character-creation quiz perfectly |
| **Miracle question** | Solution-focused brief therapy (de Shazer) | "Suppose a miracle happened overnight. What's the first thing you'd notice?" Reveals what the person thinks would fix their life | Q10 |
| **Downward arrow** | Cognitive behavioral therapy (Beck; Burns) | "And if that happened, what would it mean about you?", asked repeatedly until a core belief appears | A two-step question (Q11a → Q11b) that ends at a core belief |
| **Scaling question** | Solution-focused brief therapy | "On a scale of 0 to 10, where are you today?" | Q12; asked again at the ending to compare |
| **Body dysmorphia assessment** | CBT for body dysmorphic disorder (Wilhelm, Phillips & Steketee, 2013) | Asks about mirror checking, comparing, camouflaging and avoidance | Shop-window reflection (Q8) and photo takes (Q9), as everyday habits, never as symptoms |
| **Externalizing** · **exception** questions | Narrative therapy (White & Epston); solution-focused therapy | "When does the voice of 'not good enough' show up?" · "When was a time it *didn't*?" | **Not in the quiz.** Saved for the Reflection and the Good/Special endings, where recovery begins |

---

## 4. Draft questions

**Framing.** The quiz is presented as a light "what's your type?" personality quiz at the start of character creation. Type-based personality quizzes (MBTI and similar) are hugely popular with young players, especially in Korea, so the disguise is believable. Every question is written for **"you"**, with no gendered wording, and every question includes at least one low-pressure answer.

All items below are **original wording**, inspired by the instruments in §2. No questionnaire items are copied (most of these scales are copyrighted, and they're clinical tools, not game content).

| # | Question (player sees) | Answers → hidden scoring | Technique / construct |
| --- | --- | --- | --- |
| **Q1** | *Pick the character who's most like you.* | "Has a five-year plan and a color-coded planner" → Achievement · "Remembers everyone's birthday" → Relationships · "Always looks put-together, even at the convenience store" → Appearance · "Knows what's trending before it trends" → Status · "Would rather travel alone than wait for anyone" → Independence | Portrait question · **B** |
| **Q2** | *You get a new haircut. Whose reaction do you check for first?* | Parents → Family · Best friend → Peers · Someone you like → Partner · "Post it and read the comments" → Public · "Nobody's, I just like it" → Self | Circular question · **A** |
| **Q3** | *You send a message to the group chat. An hour later: read by 5, no replies. What's most likely going on?* | "Everyone's busy" → low sensitivity · "I said something weird" → Peers + Internalize · "They have another chat without me" → Peers, high sensitivity · "Whatever, I'll text someone else" → Independence / Avoid | Rejection-sensitivity scenario · **A, C** |
| **Q4** | *Someone close to you says, "You look… tired today." What's your first thought?* | "They're right, I look awful" → Internalize · "I'll fix it before anyone else notices" → Comply · "Wow. Thanks." → Defend · "I'll stay in today" → Avoid · "I *am* tired. I'll sleep early" → Self-compassion (+ Self) | Fear of negative evaluation / self-compassion · **A, C** |
| **Q5** | *Graduation is coming. Your family asks what you'd like as a gift.* | "Whatever they think is best" → Family · "Money, I'll decide" → Independence · "A trip with my friends" → Peers · "The newest phone" → Status / Public · "A full makeover: clinic, new clothes, the works" → Appearance | Parental expectations (Frost) · **A, B**. *Foreshadows the graduation-gift surgery theme* |
| **Q6** | *It's 2 a.m. You're scrolling and find someone your age who seems to have it all.* | Keep scrolling → low comparison · Save their photo "for inspo" → internalization · Check their follower count → Status / Public · Send it to a friend → Peers · Put the phone down feeling worse → high upward comparison | Appearance comparison · **A, E** |
| **Q7** | *You can upgrade one thing about your character instantly, for free.* | "Leaner" → thin ideal · "Stronger" → muscular ideal · "Clearer skin" → general attractiveness · "Sharper face (eyes, nose, jaw)" → facial ideal · "Taller" → height ideal · "Nothing about how I look" → not appearance-focused | SATAQ-4R internalization / Drive for Muscularity · **D** |
| **Q8** | *Walking past a shop window, you…* | Check your reflection every time → high checking · Only when someone you like might see you → Partner · Only before something important → moderate · Don't really notice → low · Look away on purpose → avoidance | Body surveillance / mirror checking · **A, E** |
| **Q9** | *Before posting a photo of yourself…* | One take → low · A few takes → moderate · Twenty takes and a filter → high, camouflage · Let a friend pick → Peers · "I don't post photos of myself" → avoidance | Camouflaging / comparison · **C, E** |
| **Q10** | *You wake up tomorrow and something has magically changed. What's the first thing you notice?* | "My family is proud of me" → Family · "Everyone wants to hang out with me" → Peers · "Someone special finally notices me" → Partner · "My post blew up overnight" → Public · "I actually like what I see in the mirror" → Appearance · "Nothing needs fixing. I just feel calm" → Self | Miracle question · **A, B** |
| **Q11a** | *Finish the sentence: "I'd feel like I failed if…"* | "…my family was disappointed in me" → Family · "…my friends left me out" → Peers · "…someone I liked turned me down" → Partner · "…people laughed at me online" → Public · "…I wasn't the best" → Achievement · "…I let myself down" → Self | Downward arrow, step 1 · **A, B** |
| **Q11b** | *"…and if that happened, it would mean I'm…"* | "not good enough" · "unlovable" · "a burden" · "invisible" · "a fake" | Downward arrow, step 2 · **F** |
| **Q12** | *Last one! From 0 to 10, how much do you like the person in the mirror today?* | Slider 0–10 → baseline | Scaling question · **G** |

**Length:** 13 screens, about 3–5 minutes (within PRD P0 #1's ≤ 5 min).

**Why it works as a disguise:** taken one at a time, every question is a normal personality-quiz question. Only together do they map the player's approval profile, ideals and core belief. The game reveals this at the ending.

---

## 5. Scoring

### 5.1 Approval profile → room weighting

- Each answer adds points to one or more approval sources. Every source is hit by **at least four questions**, because single questions are unreliable: Family (Q2, Q5, Q10, Q11a) · Peers (Q2, Q3, Q5, Q6, Q9, Q10, Q11a) · Partner (Q2, Q8, Q10, Q11a) · Public (Q2, Q5, Q6, Q10, Q11a) · Self (Q2, Q4, Q10, Q11a).
- Points are normalized into five weights that add up to 100%. For example: **Family 40% · Peers 25% · Public 20% · Partner 10% · Self 5%**.
- **Room loudness** follows the weights: Family → Parents' Room · Peers → Friends' Room · Public → Social Media Room. Louder means more frequent, more intense, more personal demands.
- **Partner** has no room of its own **[Open, see §8]**. Proposal: a crush/partner character who appears in the Friends' Room and whose comments spill into the Social Media Room.
- **Self** acts as a *protective factor*: a high Self weight raises the starting **Authenticity** stat. The rooms still push, but the player begins with more resistance.
- **Ties:** if the top two sources are within 10 points of each other, both rooms are "loud".

### 5.2 Criticism style → how NPCs pressure you

The rooms adapt their tactics to the player's style, which is what makes the pressure feel personal:

| Player's style | What the NPCs do |
| --- | --- |
| **Internalize** (shame) | Quiet disappointment: "We're not angry. We just expected more." |
| **Comply** (fix and hide) | Small, reasonable-sounding requests that keep escalating: "That's good, but what about…" |
| **Defend** (anger) | Guilt: "After everything we've done for you." |
| **Avoid** (withdraw) | Silence and exclusion: plans made without them, unanswered messages |
| **Self-compassion** | Gaslighting: "You're being stubborn. You *know* we're right." |

### 5.3 Starting stats

| Hidden stat | Starting value comes from |
| --- | --- |
| **Self-Perception** | Q12 baseline, lowered by high checking/comparison (Q6, Q8, Q9) |
| **Authenticity** | Self weight + self-compassion answers |
| **Exhaustion** | Starts at 0 for everyone |

### 5.4 What carries forward

| Quiz result | Used later in the game |
| --- | --- |
| Appearance ideal (Q7) | First upgrade path offered |
| Core belief (Q11b) | The Reflection's lines in Loops 3–4 ("You were always going to be *a burden*…") |
| Baseline (Q12) | Asked again at the ending, and shown side by side |
| Approval profile | **Ending summary** (PRD P1 #14): "Whose approval you were chasing" |

---

## 6. Male and female protagonists

The quiz is **identical for every player**. Research gives two good reasons to keep it neutral and let the *answers* steer the game:

- **The ideals differ by gender on average, but not by rule.** The SATAQ-4R measures the thin ideal and the muscular ideal separately because men and women both report both. A study of Korean undergraduates found **media pressure** affects both men and women most strongly. For women, family and media pressure predicted the **drive for thinness**; for men, peer appearance talk and media predicted the **drive for muscularity** (Sociocultural Influences… among Korean Undergraduates, *IJERPH*, 2020).
- **Korean men face real appearance pressure too:** a lean-but-defined body, smooth skin, a sharp jaw, and height. Men are a significant and growing share of cosmetic-procedure patients.

**Implications for the GDD (#4)**:
- The player picks the protagonist (male or female) at character creation, **after** the quiz.
- Q7's answer picks the first upgrade path for *either* protagonist. A female protagonist can chase "stronger"; a male protagonist can chase "leaner".
- Each path needs its own Loop 3 reveal. The concept doc covers weight loss, skin bleaching and facial surgery. Male-skewed paths need equivalents, e.g. muscle-building revealed as self-harm, or "taller" revealed as limb-lengthening surgery (a real procedure).
- Room dialogue needs variants for a son or a daughter (e.g. "You need to look reliable for job interviews" alongside "You'd be so pretty if…").

---

## 7. Ethics and safety rules for the quiz

1. **It's not a diagnosis.** The quiz is inspired by validated instruments but is not one. Penrose never tells players they have a disorder.
2. **No direct questions about eating, weight or numbers.** These can be triggering. The quiz stays on everyday habits and feelings.
3. **No clinical screening items.** No body dysmorphia or eating-disorder screening questions, even reworded.
4. **Debrief at the end.** Psychology research that uses deception must debrief participants afterward (APA Ethics Code, Standard 8.07). Penrose's ending summary does the same: it explains what the quiz really measured and why, and links to support resources (PRD P0 #9).
5. **All quiz data stays on the device**, unless the player opts in to anonymous telemetry (PRD P2 #26).
6. **Every question has a low-pressure answer**, so nobody is forced to describe themselves negatively.
7. **Original wording only.** No copied items from copyrighted scales.

---

## 8. Open decisions

| # | Decision | Options | Recommendation |
| --- | --- | --- | --- |
| D1 | Where does **Partner** pressure live? | (a) crush/partner character in the Friends' Room · (b) its own room · (c) merged into Social Media | **(a)**. No new room to build; romance and friendship pressure overlap in real life |
| D2 | Should the quiz **set** the protagonist's gender? | (a) player picks freely after the quiz · (b) quiz suggests one | **(a)**. Picking is part of the "customization" disguise, and avoids guessing |
| D3 | How visible is the reveal at the ending? | (a) full breakdown with percentages · (b) a few plain-language lines | **(b)** in game, with (a) behind a "see details" button |
| D4 | Does Q12 repeat during play, not just at the end? | Yes (e.g. each loop's mirror) / No | **Yes, once per loop**, framed by the mirror. It quietly tracks Self-Perception |
| D5 | Can the player retake the quiz on replay? | Yes / No | **Yes**. Seeing a different room get loud is a reason to replay |

## 9. How we'll check it works (feeds #15)

- **Different profiles feel different:** in playtests, two testers with opposite approval profiles describe different "loudest" rooms (PRD P0 #2 acceptance).
- **The disguise holds:** ≤ 20% of first-time testers guess the quiz's real purpose before the ending.
- **The reveal feels fair, not creepy:** ≥ 70% agree "the ending summary felt accurate" and ≤ 15% say it felt invasive.
- **Self-check:** after playing, testers fill in a short version of the real constructs (e.g. which sources pressure them most). We compare it with their quiz profile.

---

## Sources

- Thompson, J. K., Heinberg, L. J., Altabe, M., & Tantleff-Dunn, S. (1999). *Exacting Beauty: Theory, Assessment, and Treatment of Body Image Disturbance.* APA. Tripartite Influence Model.
- van den Berg, P., et al. (2002). The tripartite influence model of body image and eating disturbance. *Journal of Psychosomatic Research*, 53(5).
- Schaefer, L. M., et al. (2015). Development and validation of the SATAQ-4. *Psychological Assessment*, 27(1). [PubMed](https://pubmed.ncbi.nlm.nih.gov/25285718/)
- Schaefer, L. M., et al. (2017). Development and validation of the SATAQ-4R. *International Journal of Eating Disorders*, 50(2). [PubMed](https://pubmed.ncbi.nlm.nih.gov/27539814/)
- Crocker, J., et al. (2003). Contingencies of self-worth in college students. *JPSP*, 85(5). [Crocker Lab](https://www.asc.ohio-state.edu/psychology/crockerlab/csw.php)
- Frost, R. O., et al. (1990). The dimensions of perfectionism. *Cognitive Therapy and Research*, 14. · Hewitt, P. L., & Flett, G. L. (1991). Perfectionism in the self and social contexts. *JPSP*, 60(3).
- Downey, G., & Feldman, S. (1996). Implications of rejection sensitivity for intimate relationships. *JPSP*, 70(6). [Columbia RSQ](https://www.columbia.edu/~gd20/rsq.html)
- Schwartz, S. H., et al. (2001). Extending the cross-cultural validity of the theory of basic human values (Portrait Values Questionnaire). *JCCP*, 32(5).
- Schwartz, B., et al. (2002). Maximizing versus satisficing. *JPSP*, 83(5).
- Neff, K. D. (2003). The development and validation of a scale to measure self-compassion. *Self and Identity*, 2(3).
- Leary, M. R. (1983). A brief version of the Fear of Negative Evaluation Scale. *PSPB*, 9(3).
- Schaefer, L. M., & Thompson, J. K. (2014). The development and validation of the Physical Appearance Comparison Scale-Revised. *Eating Behaviors*, 15(2).
- McKinley, N. M., & Hyde, J. S. (1996). The Objectified Body Consciousness Scale. *Psychology of Women Quarterly*, 20(2).
- McCreary, D. R., & Sasse, D. K. (2000). An exploration of the drive for muscularity in adolescent boys and girls. *Journal of American College Health*, 48(6). [Brock University](https://spartan.ac.brocku.ca/~dmccreary/muscularity.html)
- Wilhelm, S., Phillips, K. A., & Steketee, G. (2013). *Cognitive-Behavioral Therapy for Body Dysmorphic Disorder: A Treatment Manual.* Guilford. · [IOCDF BDD assessment tools](https://bdd.iocdf.org/professionals/assessment-tools-for-bdd/)
- Young, J. E., Klosko, J. S., & Weishaar, M. E. (2003). *Schema Therapy: A Practitioner's Guide.* Guilford.
- Selvini Palazzoli, M., et al. (1980). Hypothesizing–circularity–neutrality. *Family Process*, 19(1).
- de Shazer, S. (1988). *Clues: Investigating Solutions in Brief Therapy.* Norton.
- Burns, D. D. (1980). *Feeling Good.* (Downward arrow technique.)
- White, M., & Epston, D. (1990). *Narrative Means to Therapeutic Ends.* Norton.
- Sociocultural influences, drive for thinness, drive for muscularity, and body dissatisfaction among Korean undergraduates (2020). *IJERPH*, 17(14), 5260. [MDPI](https://www.mdpi.com/1660-4601/17/14/5260)
- American Psychological Association. *Ethical Principles of Psychologists and Code of Conduct*, Standard 8.07 (Deception in Research).
