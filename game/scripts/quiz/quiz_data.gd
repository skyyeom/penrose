class_name QuizData
extends RefCounted
## Loads and validates the Act 0 quiz content (data/quiz/act0_quiz.json).

const DEFAULT_PATH := "res://data/quiz/act0_quiz.json"
const TYPE_SCORED := "scored"
const TYPE_HONESTY := "honesty"


## Returns the list of questions, or an empty array if the file is missing or invalid.
static func load_questions(path: String = DEFAULT_PATH) -> Array:
	if not FileAccess.file_exists(path):
		push_error("Quiz data not found: %s" % path)
		return []
	var parsed: Variant = JSON.parse_string(FileAccess.get_file_as_string(path))
	if typeof(parsed) != TYPE_DICTIONARY or not parsed.has("questions"):
		push_error("Quiz data is not valid JSON with a 'questions' list: %s" % path)
		return []
	var questions: Array = parsed["questions"]
	var errors := validate(questions)
	for error in errors:
		push_error("Quiz data: %s" % error)
	return [] if not errors.is_empty() else questions


## Returns a list of problems; empty means the content is usable.
static func validate(questions: Array) -> Array[String]:
	var errors: Array[String] = []
	var honesty_count := 0
	for question in questions:
		var id := str(question.get("id", "?"))
		var answers: Array = question.get("answers", [])
		match question.get("type", ""):
			TYPE_SCORED:
				# Each scored question must offer every source exactly once (quiz design §3).
				var seen := []
				for answer in answers:
					var source := str(answer.get("source", ""))
					if not Sources.is_valid(source):
						errors.append("%s has an answer with unknown source '%s'" % [id, source])
					seen.append(source)
				for source in Sources.ALL:
					if seen.count(source) != 1:
						errors.append("%s must offer '%s' exactly once" % [id, source])
			TYPE_HONESTY:
				honesty_count += 1
				if answers.size() != 2:
					errors.append("%s (honesty) must have exactly two answers" % id)
			_:
				errors.append("%s has unknown type '%s'" % [id, question.get("type", "")])
	if honesty_count != 1:
		errors.append("Quiz must have exactly one honesty question (found %d)" % honesty_count)
	return errors
