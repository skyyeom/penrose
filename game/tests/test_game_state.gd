extends TestSuite

const TEST_SAVE := "user://test_save.json"


func test_honest_quiz_keeps_all_petals() -> void:
	GameState.reset()
	GameState.apply_quiz_result({"honest": true, "loudest": ["family"]})
	check_eq(GameState.petals, 12, "petals")
	check_eq(GameState.loudest_rooms(), ["family"], "loudest rooms")


func test_dishonest_quiz_costs_one_petal() -> void:
	GameState.reset()
	GameState.apply_quiz_result({"honest": false, "loudest": []})
	check_eq(GameState.petals, 11, "petals")


func test_save_and_load_round_trip() -> void:
	GameState.reset()
	GameState.player_name = "Yoon"
	GameState.player_gender = "female"
	GameState.apply_quiz_result({"honest": true, "loudest": ["social_media"], "scores": {"social_media": 3}})
	GameState.loop_number = 2
	GameState.exhaustion = 4
	GameState.masks["family"] = 2
	GameState.room_time["society"] = 12.5
	check(GameState.save_game(TEST_SAVE), "save succeeded")

	GameState.reset()
	check(GameState.load_game(TEST_SAVE), "load succeeded")
	check_eq(GameState.player_name, "Yoon", "name")
	check_eq(GameState.loop_number, 2, "loop")
	check_eq(GameState.exhaustion, 4, "exhaustion")
	check_eq(GameState.masks["family"], 2, "family mask")
	check_eq(typeof(GameState.masks["family"]), TYPE_INT, "mask count is an int after JSON")
	check_eq(GameState.room_time["society"], 12.5, "society time")
	check_eq(GameState.loudest_rooms(), ["social_media"], "loudest after load")
	DirAccess.remove_absolute(ProjectSettings.globalize_path(TEST_SAVE))


func test_load_missing_file_returns_false() -> void:
	check(not GameState.load_game("user://does_not_exist.json"), "missing save should return false")
