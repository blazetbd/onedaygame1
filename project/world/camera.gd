extends Camera2D


@export var target: Player
@export var lerp_speed: float = 10

var following := false


func _ready() -> void:
	await get_tree().create_timer(1.5).timeout
	following = true


func _physics_process(delta: float) -> void:
	if following:
		global_position = global_position.lerp(target.global_position,lerp_speed * delta)  


func _on_death_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		following = false
		await get_tree().create_timer(2).timeout
		body.queue_free()


func _on_win_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		following = false
		await get_tree().create_timer(2).timeout
		body.queue_free()
