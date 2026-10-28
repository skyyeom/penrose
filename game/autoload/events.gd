extends Node
## Global signal bus. Systems talk to each other through these signals instead of
## referencing each other directly, so each feature can be built and tested on its own.

## Emitted when the Act 0 quiz finishes. `result` is the QuizScorer output.
signal quiz_completed(result: Dictionary)
