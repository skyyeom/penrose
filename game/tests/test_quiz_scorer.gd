extends TestSuite


func _answers(sources: Array, times: Array) -> Array:
	var answers := []
	for i in sources.size():
		answers.append({"question_id": "q%d" % (i + 1), "answer_text": "", "source": sources[i], "time_sec": times[i]})
	return answers


func test_single_loudest_room() -> void:
	var result := QuizScorer.score(_answers(
		["family", "family", "society", "family", "family"], [3, 3, 3, 3, 3]), true)
	check_eq(result["scores"]["family"], 4, "family score")
	check_eq(result["scores"]["society"], 1, "society score")
	check_eq(result["loudest"], ["family"], "loudest")
	check_eq(result["deferred"], false, "deferred")


func test_two_way_tie_both_loud_fastest_first() -> void:
	var result := QuizScorer.score(_answers(
		["family", "close", "family", "close", "society"], [3.0, 1.5, 3.0, 1.5, 2.0]), true)
	check_eq(result["loudest"], ["close", "family"], "tie order (close was answered faster)")


func test_dishonest_defers_profile() -> void:
	var result := QuizScorer.score(_answers(
		["family", "family", "family", "family", "family"], [3, 3, 3, 3, 3]), false)
	check_eq(result["deferred"], true, "deferred")
	check_eq(result["deferred_reason"], QuizScorer.REASON_DISHONEST, "reason")
	check_eq(result["loudest"], [], "loudest when deferred")
	check_eq(result["scores"]["family"], 5, "scores still recorded")


func test_mostly_fast_answers_defer_profile() -> void:
	var result := QuizScorer.score(_answers(
		["family", "close", "society", "social_media", "family"], [0.4, 0.5, 0.3, 2.0, 2.0]), true)
	check_eq(result["deferred_reason"], QuizScorer.REASON_TOO_FAST, "3 of 5 answers under 1 s")


func test_some_fast_answers_still_count() -> void:
	var result := QuizScorer.score(_answers(
		["family", "family", "society", "social_media", "family"], [0.4, 0.5, 2.0, 2.0, 2.0]), true)
	check_eq(result["deferred"], false, "2 of 5 fast answers is fine")
	check_eq(result["loudest"], ["family"], "loudest")


func test_every_five_answer_combination_has_a_loudest_room() -> void:
	# 4^5 = 1024 combinations: with 5 points over 4 sources there is always a top score,
	# and at most two sources can share it (quiz design §4.2).
	var max_tied := 0
	for n in 1024:
		var sources := []
		var code := n
		for i in 5:
			sources.append(Sources.ALL[code % 4])
			code /= 4
		var loudest: Array = QuizScorer.score(_answers(sources, [2, 2, 2, 2, 2]), true)["loudest"]
		check(not loudest.is_empty(), "combination %s has no loudest room" % [sources])
		max_tied = max(max_tied, loudest.size())
	check_eq(max_tied, 2, "largest possible tie")
