extends VehicleBody3D

const MAX_STEER = 0.9
const ENGINE_POWER = 800.0

var is_on_floor = false
@onready var boing_audio: AudioStreamPlayer = $BoingAudio


func _process(delta: float) -> void:
	steering = move_toward(steering, Input.get_axis("right", "left") * MAX_STEER, delta*10.0)
	engine_force = Input.get_axis("down", "up") * ENGINE_POWER

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump") and is_on_floor:
		is_on_floor = false
		linear_velocity.y = 12.0
		boing_audio.play()


func _on_floor_checker_body_entered(_body: Node3D) -> void:
	is_on_floor = true
