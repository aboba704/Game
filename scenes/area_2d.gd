extends Area2D

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):  # Проверяем, принадлежит ли объект к группе "player"
		print("Игрок вошел в область!")

func _on_Area2D_body_exited(body):
	if body.is_in_group("player"):
		print("Игрок покинул область!")
