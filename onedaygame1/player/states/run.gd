extends State


@export var jump_state: State


func process_input(_event: InputEvent) -> State:
	if Input.is_action_pressed("jump") and parent.is_on_floor():
		return jump_state
	return null


func process_physics(delta: float) -> State:
	parent.velocity.y += gravity * delta
	
	parent.velocity.x = move_speed
	parent.move_and_slide()
	
	return null
