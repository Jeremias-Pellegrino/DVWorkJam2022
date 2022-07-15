extends Area2D

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _input(event):
	
	if event is InputEventMouseMotion:
		print("Mouse Click/Unclick at: ", event.position)
		
		self.position = event.position
