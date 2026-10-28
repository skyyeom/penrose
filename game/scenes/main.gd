extends Node
## Entry point. Runs the game flow; for now: Act 0 quiz → placeholder for character creation.

const QUIZ_SCENE := preload("res://scenes/quiz/quiz.tscn")

var _current: Node


func _ready() -> void:
	GameState.reset()
	_show(QUIZ_SCENE.instantiate())
	_current.finished.connect(_on_quiz_finished)


func _on_quiz_finished(_result: Dictionary) -> void:
	GameState.save_game()
	var placeholder := Label.new()
	placeholder.text = "Character creation comes next.\n(Prototype: press F3 to see the quiz result.)"
	placeholder.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	placeholder.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	placeholder.set_anchors_and_offsets_preset(Control.PRESET_FULL_RECT)
	_show(placeholder)


func _show(scene: Node) -> void:
	if _current:
		_current.queue_free()
	_current = scene
	add_child(scene)
