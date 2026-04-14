extends CharacterBody2D
class_name Character

const RUN_SPEED := 200.0
const JUMP_VELOCITY := 300.0 * -1

@export var sprite_2d: Sprite2D
@export var animation_player: AnimationPlayer

var gravity:=ProjectSettings.get("physics/2d/default_gravity")as float

var direction: float
var jump: bool

#func _ready() -> void:
	#animation_player.play("")


func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	velocity.x = direction*RUN_SPEED
	
	if is_on_floor() and jump:
		velocity.y = JUMP_VELOCITY
		
	if is_on_floor():
		if is_zero_approx(direction):
			animation_player.play("idle")
		else :
			animation_player.play("run")
	else :
		animation_player.play("jump")
		
	
	if not is_zero_approx(direction):
		sprite_2d.flip_h = direction < 0
	
	jump = false
	move_and_slide()
