extends Node3D

@onready var canvas_layer: CanvasLayer = $CanvasLayer
@onready var animated_sprite_2d: AnimatedSprite2D = $CanvasLayer/AnimatedSprite2D
@onready var banana_count: Label = $CanvasLayer/BananaCount


func _ready() -> void:
	Global.banana_collected.connect(_on_banana_collected)
	var timer := get_tree().create_timer(3.5)
	timer.timeout.connect(_on_timer_timeout)


func _on_timer_timeout() -> void:
	canvas_layer.show()
	animated_sprite_2d.play("default")


func _on_animated_sprite_2d_animation_finished() -> void:
	animated_sprite_2d.hide()


func _on_banana_collected() -> void:
	banana_count.text = "Bananas left:\n(" + str(Global.collected_banana_count) + "/10)"
