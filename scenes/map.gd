extends Node3D


@onready var banana_audio: AudioStreamPlayer = $BananaAudio


func _ready() -> void:
	Global.banana_collected.connect(_on_banana_collected)


func _on_banana_collected() -> void:
	banana_audio.play()
