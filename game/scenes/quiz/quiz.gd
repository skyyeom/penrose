extends Control
## Act 0 quiz screen: intro → 5 scored questions → honesty question → result saved to GameState.
## Content comes from data/quiz/act0_quiz.json; scoring from QuizScorer.

signal finished(result: Dictionary)

const BG_COLOR := Color.WHITE
const TEXT_COLOR := Color.BLACK

@export var data_path: String = QuizData.DEFAULT_PATH
@export var shuffle_answers: bool = true
@export var show_intro: bool = true

## Returns the current time in seconds. Replaced in tests to control answer timings.
var clock: Callable = func() -> float: return Time.get_ticks_msec() / 1000.0

var _questions: Array = []
var _index: int = -1
var _shown_answers: Array = []
var _question_started_at: float = 0.0
var _scored_answers: Array = []
var _honest: bool = true

var _question_label: Label
var _answers_box: VBoxContainer


func _ready() -> void:
	_questions = QuizData.load_questions(data_path)
	_build_ui()
	if _questions.is_empty():
		_question_label.text = "The quiz could not be loaded."
		return
	if show_intro:
		_show_intro()
	else:
		start()


func start() -> void:
	_index = -1
	_scored_answers.clear()
	_honest = true
	_next_question()


## Picks the answer currently shown at `index` (0 = top). Used by buttons and tests.
func choose(index: int) -> void:
	if index < 0 or index >= _shown_answers.size():
		return
	var answer: Dictionary = _shown_answers[index]
	var question: Dictionary = _questions[_index]
	var elapsed: float = clock.call() - _question_started_at
	if question.get("type") == QuizData.TYPE_HONESTY:
		_honest = bool(answer.get("honest", true))
	else:
		_scored_answers.append({
			"question_id": question.get("id", ""),
			"answer_text": answer.get("text", ""),
			"source": answer.get("source", ""),
			"time_sec": snappedf(elapsed, 0.01),
		})
	_next_question()


func shown_answer_texts() -> Array[String]:
	var texts: Array[String] = []
	for answer in _shown_answers:
		texts.append(str(answer.get("text", "")))
	return texts


func _next_question() -> void:
	_index += 1
	if _index >= _questions.size():
		_finish()
		return
	var question: Dictionary = _questions[_index]
	_shown_answers = question.get("answers", []).duplicate()
	# The Yes/No honesty question keeps its order; the others shuffle so room order never repeats.
	if shuffle_answers and question.get("type") == QuizData.TYPE_SCORED:
		_shown_answers.shuffle()
	_question_label.text = str(question.get("text", ""))
	_clear_answers()
	for i in _shown_answers.size():
		_add_button(str(_shown_answers[i].get("text", "")), choose.bind(i))
	_question_started_at = clock.call()


func _finish() -> void:
	var result := QuizScorer.score(_scored_answers, _honest)
	GameState.apply_quiz_result(result)
	Events.quiz_completed.emit(result)
	finished.emit(result)


func _show_intro() -> void:
	_clear_answers()
	_add_button("Start", start)


func _build_ui() -> void:
	var background := ColorRect.new()
	background.color = BG_COLOR
	background.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	add_child(background)

	var center := CenterContainer.new()
	center.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	add_child(center)

	var column := VBoxContainer.new()
	column.custom_minimum_size = Vector2(640, 0)
	column.add_theme_constant_override("separation", 24)
	center.add_child(column)

	_question_label = _make_label(30)
	_question_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	column.add_child(_question_label)

	_answers_box = VBoxContainer.new()
	_answers_box.add_theme_constant_override("separation", 12)
	column.add_child(_answers_box)


func _make_label(font_size: int) -> Label:
	var label := Label.new()
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.add_theme_font_size_override("font_size", font_size)
	label.add_theme_color_override("font_color", TEXT_COLOR)
	return label


func _add_button(text: String, on_pressed: Callable) -> void:
	var button := Button.new()
	button.text = text
	button.custom_minimum_size = Vector2(0, 52)
	button.add_theme_font_size_override("font_size", 20)
	button.pressed.connect(on_pressed)
	_answers_box.add_child(button)


func _clear_answers() -> void:
	for child in _answers_box.get_children():
		_answers_box.remove_child(child)
		child.queue_free()
