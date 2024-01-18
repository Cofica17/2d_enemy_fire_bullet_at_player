extends CharacterBody2D
class_name Player

@export var speed = 200

var direction = Vector2.ZERO

func _physics_process(delta):
	direction.x = -Input.get_axis("move_right", "move_left")
	direction.y = Input.get_axis("move_up", "move_down")
	
	velocity = direction * speed
	move_and_slide()
