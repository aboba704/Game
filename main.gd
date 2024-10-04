extends Node

func new_game():
	$Player.start($StartPosition.position)
	$StartTimer.start()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
