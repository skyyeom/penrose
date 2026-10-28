class_name QuizScorer
extends RefCounted
## Turns quiz answers into an approval profile. Rules: docs/design/act0-quiz.md §4.

## Answers faster than this are treated as possibly random clicking.
const FAST_ANSWER_SEC := 1.0

const REASON_NONE := ""
const REASON_DISHONEST := "dishonest"
const REASON_TOO_FAST := "too_fast"


## `answers`: one Dictionary per scored question: {question_id, answer_text, source, time_sec}.
## `honest`: the player's answer to the honesty question.
##
## Returns:
## - scores: {source: points}
## - avg_time: {source: average seconds for answers given to that source}
## - loudest: sources that make their rooms loud, loudest first; empty when deferred
## - deferred: true when the loudest room is decided in Loop 1 instead (by time spent per room)
## - deferred_reason: "", "dishonest" or "too_fast"
## - honest: the honesty answer
## - answers: copy of the input, kept for the ending debrief
static func score(answers: Array, honest: bool) -> Dictionary:
	var scores := Sources.empty_counts(0)
	var time_totals := Sources.empty_counts(0.0)
	var fast_answers := 0
	for answer in answers:
		var source := str(answer.get("source", ""))
		if not Sources.is_valid(source):
			push_warning("QuizScorer: ignoring answer with unknown source '%s'" % source)
			continue
		var time_sec := float(answer.get("time_sec", 0.0))
		scores[source] += 1
		time_totals[source] += time_sec
		if time_sec < FAST_ANSWER_SEC:
			fast_answers += 1

	var avg_time := {}
	for source in Sources.ALL:
		avg_time[source] = time_totals[source] / scores[source] if scores[source] > 0 else INF

	var reason := REASON_NONE
	if not honest:
		reason = REASON_DISHONEST
	elif answers.size() > 0 and fast_answers * 2 > answers.size():
		reason = REASON_TOO_FAST

	var loudest: Array[String] = []
	if reason == REASON_NONE:
		loudest = _top_sources(scores, avg_time)

	return {
		"scores": scores,
		"avg_time": avg_time,
		"loudest": loudest,
		"deferred": reason != REASON_NONE,
		"deferred_reason": reason,
		"honest": honest,
		"answers": answers.duplicate(true),
	}


## Sources with the highest score. On a tie, all tied rooms are loud and the source
## chosen fastest on average comes first (quick answers reflect automatic preferences).
static func _top_sources(scores: Dictionary, avg_time: Dictionary) -> Array[String]:
	var top := 0
	for source in Sources.ALL:
		top = max(top, scores[source])
	var tied: Array[String] = []
	if top == 0:
		return tied
	for source in Sources.ALL:
		if scores[source] == top:
			tied.append(source)
	tied.sort_custom(func(a: String, b: String) -> bool: return avg_time[a] < avg_time[b])
	return tied
