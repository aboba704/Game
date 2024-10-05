extends Area2D

var entered = false

func _on_body_entered(body: PhysicsBody2D) -> void:
	entered = true


func _on_body_exited(body) -> void:
	if entered == true:
			get_tree().change_scene_to_file("res://scenes/Town.tscn")
