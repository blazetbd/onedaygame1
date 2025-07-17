extends State


@export var run_state: State

@export var jump_force := -400.0


func enter() -> void:
	super()
	parent.velocity.y = jump_force

func process_physics(delta: float) -> State:
	parent.velocity.y += gravity * delta
	parent.velocity.x = move_speed
	parent.move_and_slide()
	
	if parent.is_on_floor():
		return run_state
	
	return null
