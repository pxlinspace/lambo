extends Node3D


@onready var banana_audio: AudioStreamPlayer = $BananaAudio
@onready var win_audio: AudioStreamPlayer = $WinAudio


func _ready() -> void:
	Global.banana_collected.connect(_on_banana_collected)


func _on_banana_collected() -> void:
	banana_audio.play()
	if Global.collected_banana_count >= 10:
		win_audio.play()
