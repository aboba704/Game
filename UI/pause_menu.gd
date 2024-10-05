extends Control

func _ready():
	$AnimationPlayer.play("RESET")

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	
func testEsc():
	if Input.is_action_just_pressed("Escape") and !get_tree().paused:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		pause()
	elif Input.is_action_just_pressed("Escape") and get_tree().paused:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
		resume()
		

func _on_resume_pressed() -> void:
	resume()

func _on_quit_pressed() -> void:
	resume()
	get_tree().change_scene_to_file("res://MainScene/ MainMenu.tscn")
	
func _process(delta):
	testEsc()
