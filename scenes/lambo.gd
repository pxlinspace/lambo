extends VehicleBody3D

const MAX_STEER = 0.9
const ENGINE_POWER = 800.0


func _process(delta: float) -> void:
	steering = move_toward(steering, Input.get_axis("right", "left") * MAX_STEER, delta*10.0)
	engine_force = Input.get_axis("down", "up") * ENGINE_POWER

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		linear_velocity.y = 9.0
