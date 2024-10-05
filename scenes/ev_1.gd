extends Node

# Ссылка на DialogueManager
@onready var dialogue_manager = $DialogueManager

func _ready():
	# Подписываемся на сигнал завершения диалога
	dialogue_manager.connect("dialogue_finished", self, "_on_dialogue_finished")

func _on_dialogue_finished():
	# Переход в сцену игры
	get_tree().change_scene("res://Forest.tscn")
