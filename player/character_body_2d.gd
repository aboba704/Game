extends CharacterBody2D

const SPEED = 300.0
var screen_size

func _ready() -> void:
	screen_size = get_viewport_rect().size

func _physics_process(delta: float) -> void:
	

	# Получаем направление движения
	var directionX := Input.get_axis("Left", "Right")
	var directionY := Input.get_axis("Up", "Down")
	
	if directionX != 0:
		velocity.x = directionX * SPEED
	else:
		velocity.x = 0

	if directionY != 0:
		velocity.y = directionY * SPEED
	else:
		velocity.y = 0

	# Перемещение с учетом столкновений
	move_and_slide()

	# Обновление анимации
	if velocity.length() > 0:
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.animation = "idle"
	if velocity.x != 0 || velocity.y != 0:
		$AnimatedSprite2D.animation = "right"
		$AnimatedSprite2D.flip_v = false
		$AnimatedSprite2D.flip_h = velocity.x < 0
	
