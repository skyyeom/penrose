extends CanvasLayer
## Developer overlay: press F3 to show the live GameState. Not shown to players in release builds.

var _label: Label


func _ready() -> void:
	layer = 100
	visible = false
	var panel := PanelContainer.new()
	panel.position = Vector2(8, 8)
	panel.modulate = Color(1, 1, 1, 0.9)
	_label = Label.new()
	_label.add_theme_font_size_override("font_size", 12)
	panel.add_child(_label)
	add_child(panel)
	GameState.changed.connect(_refresh)
	_refresh()


func _unhandled_input(event: InputEvent) -> void:
	if not OS.is_debug_build():
		return
	if event is InputEventKey and event.pressed and not event.echo and event.keycode == KEY_F3:
		visible = not visible
		_refresh()


func _refresh() -> void:
	if visible:
		_label.text = "GameState (F3)\n" + JSON.stringify(GameState.to_dict(), "  ")
