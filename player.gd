extends CharacterBody2D


const SPEED = 200.0


func _physics_process(delta):
	velocity = Vector2.ZERO
	while Input.is_action_just_pressed("Up"):
		velocity.y -= 1
	while Input.is_action_just_pressed("Down"):
		velocity.y += 1
	while Input.is_action_just_pressed("Left"):
		velocity.x -= 1
	while Input.is_action_just_pressed("Right"):
		velocity.x += 1
	velocity = velocity.normalized() * SPEED
	move_and_slide()
