extends TestSuite
## Plays the real quiz scene end to end with a fake clock.

const QUIZ_SCENE := preload("res://scenes/quiz/quiz.tscn")

var _now := 0.0


func _make_quiz() -> Control:
	var quiz: Control = QUIZ_SCENE.instantiate()
	quiz.show_intro = false
	quiz.clock = func() -> float: return _now
	tree.root.add_child(quiz)
	return quiz


## Clicks the shown answer whose hidden source matches, after `seconds` of "thinking".
func _pick(quiz: Control, source: String, seconds: float) -> void:
	_now += seconds
	for i in quiz._shown_answers.size():
		if quiz._shown_answers[i].get("source", "") == source:
			quiz.choose(i)
			return
	failures.append("no answer with source %s on screen" % source)


func test_full_quiz_sets_game_state() -> void:
	GameState.reset()
	var quiz := _make_quiz()
	var received := []
	Events.quiz_completed.connect(func(r: Dictionary) -> void: received.append(r), CONNECT_ONE_SHOT)

	for source in ["society", "society", "family", "society", "close"]:
		_pick(quiz, source, 2.0)
	_now += 1.5
	quiz.choose(0)  # "Yes" on the honesty question

	check_eq(received.size(), 1, "quiz_completed emitted once")
	check_eq(GameState.loudest_rooms(), ["society"], "loudest room")
	check_eq(GameState.petals, 12, "petals after honest quiz")
	check_eq(GameState.quiz["answers"].size(), 5, "answers kept for the debrief")
	check_eq(GameState.quiz["answers"][0]["time_sec"], 2.0, "answer time recorded")
	quiz.queue_free()


func test_answering_no_defers_and_costs_a_petal() -> void:
	GameState.reset()
	var quiz := _make_quiz()
	for source in ["family", "family", "family", "family", "family"]:
		_pick(quiz, source, 2.0)
	quiz.choose(1)  # "No"
	check_eq(GameState.quiz["deferred_reason"], QuizScorer.REASON_DISHONEST, "deferred reason")
	check_eq(GameState.petals, 11, "petals")
	quiz.queue_free()


func test_scored_answers_are_shuffled_but_honesty_is_not() -> void:
	var quiz := _make_quiz()
	var orders := {}
	for attempt in 20:
		quiz.start()
		orders[",".join(quiz.shown_answer_texts())] = true
	check(orders.size() > 1, "answer order should vary between runs")
	for source in ["family", "family", "family", "family", "family"]:
		_pick(quiz, source, 2.0)
	check_eq(quiz.shown_answer_texts(), ["Yes", "No"], "honesty answers keep their order")
	quiz.queue_free()
