extends Node

signal banana_collected
var collected_banana_count: int = 0


func add_banana() -> void:
	collected_banana_count += 1
	banana_collected.emit()
