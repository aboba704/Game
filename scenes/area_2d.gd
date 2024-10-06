extends Area2D

var is_body_inside = false

func _on_Area2D_body_entered(body):
	is_body_inside = true

func _on_Area2D_body_exited(body):
	is_body_inside = false

func _process(delta):
	if is_body_inside:
		Dialogic.start("res://tl/ev2.dtl")
