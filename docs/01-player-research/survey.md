# Survey (build in Microsoft Forms)

> Part of the [player research kit](README.md) (#28). About 5 minutes. **Microsoft Forms question type** given for each question. Responses export to Excel with **Open in Excel** and paste into the *Survey responses* sheet of [analysis-workbook.xlsx](analysis-workbook.xlsx) (columns match the IDs below).

**Form title:** *Story games: a 5-minute survey*

**Intro text:** "I'm researching how people find and play story-driven games. The survey is anonymous unless you choose to leave an email at the end. You must be 18 or older. You can skip any optional question."

---

## Section 1 · About you

| ID | Question | Forms type | Options |
| --- | --- | --- | --- |
| S1 | How old are you? | Choice (required) | Under 18 *(→ ends the survey, using Forms branching)* · 18–21 · 22–25 · 26–30 · 31–40 · 41+ |
| S2 | Where do you live? | Choice | North America · South America · Europe · South Korea · Other Asia · Oceania · Africa · Prefer not to say |
| S3 | Gender | Choice (optional) | Woman · Man · Non-binary · Prefer to self-describe · Prefer not to say |
| S4 | About how many hours a week do you play games? | Choice | Less than 2 · 2–5 · 6–10 · 11–20 · More than 20 |
| S5 | Where do you play? | Multiple answers | PC (Steam) · PC (itch.io) · Mac · Steam Deck · Switch · PlayStation · Xbox · Phone |

## Section 2 · Games you play

| ID | Question | Forms type | Options |
| --- | --- | --- | --- |
| S6 | Which of these have you played? | Multiple answers | Doki Doki Literature Club · OMORI · Slay the Princess · Mouthwashing · MiSide · Needy Streamer Overload · KinitoPET · Inscryption · Consume Me · Money for Girls · Fran Bow · None of these |
| S7 | How do you usually find new story-driven games? | Multiple answers | YouTube Let's Plays · Video essays · Twitch · TikTok · Reddit · Steam store · itch.io · Friends · Review sites · Other |
| S8 | What made you buy or download the **last** story game you played? | Text (long) | — |
| S9 | Have you ever played a free version or demo, then bought the full game? | Choice | Yes · No · Not sure |
| S10 | About how much did your last story game cost? | Choice | Free · Under $5 · $5–9.99 · $10–14.99 · $15–19.99 · $20+ · Don't remember |

## Section 3 · Your preferences

**Forms type: Likert** (Strongly disagree · Disagree · Neutral · Agree · Strongly agree), scored 1–5.

| ID | Statement |
| --- | --- |
| S11 | I replay story games to see other endings. |
| S12 | I like being able to control how graphic a horror game is. |
| S13 | I'd be interested in a story game about pressure to look a certain way from family, friends, work or social media. |
| S14 | Games set in a culture different from mine are more interesting when they don't over-explain it. |

## Section 4 · A quick quiz test

| ID | Question | Forms type |
| --- | --- | --- |
| — | *Show:* "If you were a houseplant, where would you want to be placed?" (windowsill · coffee table · office lobby · café). "Which sound would you most like to wake up to?" (someone cooking breakfast · a voice message · your alarm · phone notifications) | Section description (text only) |
| S15 | What do you think quiz questions like these are trying to find out about someone? | Text (long) |

## Section 5 · Optional

| ID | Question | Forms type | Options |
| --- | --- | --- | --- |
| S16 | Have you ever felt pressure about any of these? (optional) | Multiple answers | Weight or body shape · Muscle or strength · Height · Skin · Facial features · None · Prefer not to say |
| S17 | Can I contact you for a 30-minute interview or a playtest? Leave an email if yes. | Text (short, optional) | — |

**Closing text:** "Thank you! If any of these topics are on your mind, here are some support resources: [support resources link]."

---

## Which assumption each question tests

| Assumption | Questions |
| --- | --- |
| A1 Replay for endings | S11 |
| A2 Quiz disguise | S15 |
| A3 Interest in the theme | S13, S6 |
| A4 Free slice → purchase | S7, S9 |
| A5 Intensity control | S12 |
| A6 Culture | S14 |
| A7 Price | S10 |
| A8 Male players and the Stronger path | S3 × S16 |
| A9 Creators as discovery | S7 |
