extends Control

onready var audioStreamPlayer = $AudioStreamPlayer
const path: String = "res://Game/Game.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	audioStreamPlayer.play()


func _input(event):
	pass


func _on_History_button_up():
	get_tree().change_scene(path)
	pass # Replace with function body.


func _on_Options_button_up():
#	dimm the menu screen and show up the options menu
	return
