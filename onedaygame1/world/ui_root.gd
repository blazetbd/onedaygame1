extends CanvasLayer


var ui: Control


func _ready() -> void:
	ui = get_child(0)


func _on_death_area_body_entered(body: Node2D) -> void:
	assert(ui != null)
	if body.is_in_group("player"):
		ui.retry_prompt.show()


func _on_win_area_body_entered(body: Node2D) -> void:
	assert(ui != null)
	if body.is_in_group("player"):
		ui.win_prompt.show()
