# Penrose

A 2D hand-drawn psychological horror game that looks like a harmless character-customization / self-improvement game. You're trapped in a house that loops like the Penrose stairs, every "improvement" destroys the protagonist, and your choices decide how it ends.

## Repository layout

| Folder | What's in it |
| --- | --- |
| [`docs/`](docs/) | Pre-production docs: [market research](docs/01-market-research.md), [PRD](docs/03-prd.md), [GDD](docs/04-gdd.md) and detailed [design docs](docs/design/) |
| [`game/`](game/) | The Godot 4 project |

## Running the game

1. Install [Godot 4.7](https://godotengine.org/download).
2. In the Godot Project Manager, click **Import** and select `game/project.godot`.
3. Press **F5** to run. Press **F3** in-game to show the debug overlay (live game state).

## Running the tests

From the repository root:

```sh
<path-to-godot> --headless --path game -s res://tests/run_tests.gd
```

On macOS, `<path-to-godot>` is e.g. `/Applications/Godot.app/Contents/MacOS/Godot`. The command exits with code 0 when all tests pass.

## How the code is organized

| Path | Purpose |
| --- | --- |
| `game/autoload/game_state.gd` | **GameState**: single source of truth for a run (quiz profile, rose petals, stats, masks, loop); save/load |
| `game/autoload/events.gd` | **Events**: signal bus so systems don't reference each other directly |
| `game/autoload/debug_overlay.gd` | F3 debug overlay |
| `game/data/` | Game content as data (e.g. `quiz/act0_quiz.json`) |
| `game/scripts/` | Logic with no UI (e.g. `QuizScorer`), easy to test |
| `game/scenes/` | Screens and rooms (`main.tscn` is the entry point) |
| `game/tests/` | Headless tests |
