extends Node
## Single source of truth for a run: quiz profile, the rose, hidden stats, masks, loop.
## Every system reads and writes here. Numbers follow docs/design/systems.md.

signal changed

const SAVE_PATH := "user://save.json"
const SAVE_VERSION := 1
const START_PETALS := 12
const DEFAULT_NAME := "Haneul"

var player_name: String = DEFAULT_NAME
var player_gender: String = ""
## QuizScorer result plus the raw answers (see QuizScorer.score).
var quiz: Dictionary = {}
var loop_number: int = 0
## The rose = Authenticity.
var petals: int = START_PETALS
## Set by the player's own 0–10 rating at the first Bathroom mirror visit; -1 until then.
var self_perception: int = -1
var exhaustion: int = 0
var resistance: int = 0
var masks: Dictionary = Sources.empty_counts(0)
## Seconds spent in each room; decides the loudest room when the quiz profile is deferred.
var room_time: Dictionary = Sources.empty_counts(0.0)


func reset() -> void:
	player_name = DEFAULT_NAME
	player_gender = ""
	quiz = {}
	loop_number = 0
	petals = START_PETALS
	self_perception = -1
	exhaustion = 0
	resistance = 0
	masks = Sources.empty_counts(0)
	room_time = Sources.empty_counts(0.0)
	changed.emit()


func apply_quiz_result(result: Dictionary) -> void:
	quiz = result.duplicate(true)
	# Quiz design §4.3: answering "No" to the honesty question costs one petal.
	petals = START_PETALS if result.get("honest", true) else START_PETALS - 1
	changed.emit()


func loudest_rooms() -> Array:
	return quiz.get("loudest", [])


func to_dict() -> Dictionary:
	return {
		"version": SAVE_VERSION,
		"player_name": player_name,
		"player_gender": player_gender,
		"quiz": quiz,
		"loop_number": loop_number,
		"petals": petals,
		"self_perception": self_perception,
		"exhaustion": exhaustion,
		"resistance": resistance,
		"masks": masks,
		"room_time": room_time,
	}


func from_dict(data: Dictionary) -> void:
	player_name = str(data.get("player_name", DEFAULT_NAME))
	player_gender = str(data.get("player_gender", ""))
	quiz = data.get("quiz", {})
	loop_number = int(data.get("loop_number", 0))
	petals = int(data.get("petals", START_PETALS))
	self_perception = int(data.get("self_perception", -1))
	exhaustion = int(data.get("exhaustion", 0))
	resistance = int(data.get("resistance", 0))
	masks = Sources.empty_counts(0)
	room_time = Sources.empty_counts(0.0)
	var saved_masks: Dictionary = data.get("masks", {})
	var saved_time: Dictionary = data.get("room_time", {})
	# JSON turns every number into a float, so cast back.
	for source in Sources.ALL:
		masks[source] = int(saved_masks.get(source, 0))
		room_time[source] = float(saved_time.get(source, 0.0))
	changed.emit()


func save_game(path: String = SAVE_PATH) -> bool:
	var file := FileAccess.open(path, FileAccess.WRITE)
	if file == null:
		push_error("Could not save to %s: %s" % [path, error_string(FileAccess.get_open_error())])
		return false
	file.store_string(JSON.stringify(to_dict(), "\t"))
	return true


func load_game(path: String = SAVE_PATH) -> bool:
	if not FileAccess.file_exists(path):
		return false
	var parsed: Variant = JSON.parse_string(FileAccess.get_file_as_string(path))
	if typeof(parsed) != TYPE_DICTIONARY:
		push_error("Save file %s is corrupted." % path)
		return false
	from_dict(parsed)
	return true


func has_save(path: String = SAVE_PATH) -> bool:
	return FileAccess.file_exists(path)
