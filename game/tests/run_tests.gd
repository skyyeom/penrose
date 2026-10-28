extends SceneTree
## Headless test runner (no add-ons needed).
## Run from the repo root:
##   <godot> --headless --path game -s res://tests/run_tests.gd
## Exits with code 0 when all tests pass, 1 otherwise.

const TEST_FILES := [
	"res://tests/test_quiz_data.gd",
	"res://tests/test_quiz_scorer.gd",
	"res://tests/test_game_state.gd",
	"res://tests/test_quiz_flow.gd",
]


func _initialize() -> void:
	# Wait one frame so autoloads (GameState, Events) are ready.
	await process_frame
	var passed := 0
	var failed := 0
	for path in TEST_FILES:
		var suite: TestSuite = load(path).new()
		suite.tree = self
		for method in suite.get_method_list():
			var name: String = method["name"]
			if not name.begins_with("test_"):
				continue
			suite.failures.clear()
			await suite.call(name)
			if suite.failures.is_empty():
				passed += 1
				print("  PASS  %s :: %s" % [path.get_file(), name])
			else:
				failed += 1
				print("  FAIL  %s :: %s" % [path.get_file(), name])
				for failure in suite.failures:
					print("        - " + failure)
	print("\n%d passed, %d failed" % [passed, failed])
	quit(1 if failed > 0 else 0)
