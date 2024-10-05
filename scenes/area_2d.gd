extends Area2D

# Переменная для отслеживания состояния коллизии
var is_body_inside = false

func _on_Area2D_body_entered(body):
	is_body_inside = true
	print("Тело вошло в область: ", body.name)

func _on_Area2D_body_exited(body):
	is_body_inside = false
	print("Тело покинуло область: ", body.name)

func _process(delta):
	if is_body_inside:
		print("Запуск катсцены...")
		Dialogic.start("res://tl/ev2.dtl")
