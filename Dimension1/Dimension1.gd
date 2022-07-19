extends Control

onready var margarete = $Margarete

func _ready():
	mouse_filter = Control.MOUSE_FILTER_IGNORE
#
#func _input(event):
#	if event is InputEventMouseButton:
#		pass
#
#	elif event is InputEventMouseMotion:
#		var diff = event.position - margarete.position
#		margarete.move_and_slide(diff)


func _on_Control_mouse_entered():
	print("MOUSE ENTERED CONTROL")
