extends TestSuite


func test_shipped_quiz_is_valid() -> void:
	var questions := QuizData.load_questions()
	check_eq(questions.size(), 6, "question count")
	check(QuizData.validate(questions).is_empty(), "shipped quiz has validation errors: %s" % [QuizData.validate(questions)])


func test_five_scored_questions_then_honesty_last() -> void:
	var questions := QuizData.load_questions()
	for i in 5:
		check_eq(questions[i]["type"], QuizData.TYPE_SCORED, "question %d type" % (i + 1))
	check_eq(questions[5]["type"], QuizData.TYPE_HONESTY, "last question type")


func test_validate_catches_missing_source() -> void:
	var bad := [
		{"id": "x", "type": "scored", "answers": [
			{"text": "a", "source": "family"},
			{"text": "b", "source": "family"},
			{"text": "c", "source": "society"},
			{"text": "d", "source": "social_media"},
		]},
		{"id": "h", "type": "honesty", "answers": [{"text": "Yes", "honest": true}, {"text": "No", "honest": false}]},
	]
	var errors := QuizData.validate(bad)
	check(errors.size() >= 2, "expected errors for duplicate 'family' and missing 'close', got %s" % [errors])


func test_validate_requires_one_honesty_question() -> void:
	check(not QuizData.validate([]).is_empty(), "empty quiz should be invalid")
