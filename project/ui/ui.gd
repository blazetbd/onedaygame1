extends Control


@onready var retry_prompt: VBoxContainer = $RetryPrompt
@onready var win_prompt: VBoxContainer = $WinPrompt


func _on_retry_button_pressed() -> void:
	get_tree().reload_current_scene()


func _on_exit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu/main_menu.tscn")
