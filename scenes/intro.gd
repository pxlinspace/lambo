extends Node3D

@onready var canvas_layer: CanvasLayer = $CanvasLayer
@onready var animated_sprite_2d: AnimatedSprite2D = $CanvasLayer/AnimatedSprite2D


func _ready() -> void:
	var timer := get_tree().create_timer(3.5)
	timer.timeout.connect(on_timer_timeout)


func on_timer_timeout():
	canvas_layer.show()
	animated_sprite_2d.play("default")


func _on_animated_sprite_2d_animation_finished() -> void:
	animated_sprite_2d.hide()
