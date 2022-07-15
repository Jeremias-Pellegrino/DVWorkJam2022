extends Control

onready var margarete = $Margarete

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		
		var diff = event.position.x - margarete.position.x
#		var amount 
		margarete.move_local_x(diff)
	elif event is InputEventMouseMotion:
		print("Mouse Motion at: ", event.position)

   # Print the size of the viewport.
	print("Viewport Resolution is: ", get_viewport_rect().size)
#	if Input.is_action_just_released(mouse):
#		pass
