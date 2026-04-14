extends Node
@export var Character: Character

func _ready() -> void:
	pass

func _input(event: InputEvent) -> void:
	Character.direction = Input.get_axis("move_left","move_right")
	
	Character.jump = Input.is_action_just_pressed("jump")
	
