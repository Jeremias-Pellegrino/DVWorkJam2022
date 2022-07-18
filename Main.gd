extends Control

onready var margarete = $Margarete

func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton:
		pass

	elif event is InputEventMouseMotion:
		var diff = event.position - margarete.position
		margarete.move_and_slide(diff)
