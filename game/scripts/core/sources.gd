class_name Sources
extends RefCounted
## The four outside approval sources the Act 0 quiz measures, and the room each one drives.
## See docs/design/act0-quiz.md §1.

const FAMILY := "family"
const CLOSE := "close"
const SOCIETY := "society"
const SOCIAL_MEDIA := "social_media"

const ALL: Array[String] = [FAMILY, CLOSE, SOCIETY, SOCIAL_MEDIA]

const ROOM_NAMES := {
	FAMILY: "Family Room",
	CLOSE: "Friends & Partner Room",
	SOCIETY: "Society Room",
	SOCIAL_MEDIA: "Social Media Room",
}


static func is_valid(source: String) -> bool:
	return source in ALL


static func empty_counts(initial: Variant = 0) -> Dictionary:
	var counts := {}
	for source in ALL:
		counts[source] = initial
	return counts
