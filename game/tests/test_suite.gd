class_name TestSuite
extends RefCounted
## Base class for tests: methods starting with `test_` are run by tests/run_tests.gd.

var tree: SceneTree
var failures: Array[String] = []


func check(condition: bool, message: String) -> void:
	if not condition:
		failures.append(message)


func check_eq(actual: Variant, expected: Variant, message: String = "") -> void:
	if actual != expected:
		failures.append("%s expected %s, got %s" % [message, var_to_str(expected), var_to_str(actual)])
