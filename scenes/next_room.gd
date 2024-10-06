extends Area2D

var entered = false

func _on_body_entered(body: CharacterBody2D) -> void:
	entered = true


func _on_body_exited(body) -> void:
	if entered == true:
		Dialogic.start("res://tl/ev2.dtl")
		
		queue_free()
