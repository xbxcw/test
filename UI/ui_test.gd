extends Control

@export var player_controller: Node
@export var blue_soldier: Character


func _on_button_pressed() -> void:
	player_controller.Character = blue_soldier
