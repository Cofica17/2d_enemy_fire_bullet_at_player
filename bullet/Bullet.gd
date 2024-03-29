extends Node2D

@export var speed = 10

var direction = Vector2.ZERO

func _physics_process(delta):
	position += direction * speed

func _on_area_2d_body_entered(body):
	if body is Player:
		queue_free()
