extends CharacterBody2D

@export var move_speed = 20.0

var direction : Vector2

func _physics_process(delta):
	if Input.is_action_pressed("up"):
		direction.y = -1
	elif Input.is_action_pressed("down"):
		direction.y = 1
	else:
		direction.y = 0
		
	if Input.is_action_pressed("left"):
		direction.x = -1
	elif Input.is_action_pressed("right"):
		direction.x = 1
	else:
		direction.x = 0
	
	velocity = direction * move_speed * delta * 200
	move_and_slide()
