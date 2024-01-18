extends CharacterBody2D

@export var shoot_cooldown = 1.2

@onready var player = get_tree().get_first_node_in_group("Player")
@onready var shoot_timer = $ShootTimer

var BulletScene = load("res://bullet/Bullet.tscn")

func _ready():
	shoot_timer.start(shoot_cooldown)

func _process(delta):
	if shoot_timer.is_stopped():
		shoot()
		shoot_timer.start(shoot_cooldown)

func shoot():
	var bullet = BulletScene.instantiate()
	add_child(bullet)
	bullet.direction = global_position.direction_to(player.global_position)
	bullet.global_position = global_position
