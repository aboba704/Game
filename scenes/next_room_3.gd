extends Area2D

var entered1 = false

func _on_body_entered(body: CharacterBody2D) -> void:
	entered1 = true


func _on_body_exited(body) -> void:
	if entered1 == true:
		get_tree().change_scene_to_file("res://scenes/Town.tscn")
