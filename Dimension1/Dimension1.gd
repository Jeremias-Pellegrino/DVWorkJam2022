extends Node2D

enum Dimension {
	D1 = 1, D2 = 2
}

# Move out to another class/script?
class InventoryControl:
	var objects = {"paper": false, "tint": 75, "code": 100}

var IC = InventoryControl.new()
var timer: Timer = Timer.new()
var currentDimension = Dimension.D1
var path: String = "res://Assets-Visual/nuevo/fondoD1.png"

func _ready():
	timer.connect("timeout",self,"switchDimension") 
	timer.set_wait_time(2.0)
	timer.set_one_shot(false)
	add_child(timer)
	timer.start()
	
func _input(event):
	if event.is_action_pressed("ui_up"):
		switchDimension()
		

func switchDimension():
	
	match currentDimension:
		Dimension.D1:
			currentDimension = Dimension.D2
			path = path.replace("D1", "D2")
		Dimension.D2:
			currentDimension = Dimension.D1
			path = path.replace("D2", "D1")

	# if currentDimension == Dimension.D1:
	# 	currentDimension = Dimension.D2
	# 	path = path.replace("D1", "D2")
	# else:
	# 	currentDimension = Dimension.D1
	# 	path = path.replace("D2", "D1")

#	currentDimension = (currentDimension == Dimension.D1) ? Dimension.D2 : Dimension.D1
	
	emit_signal("dimensionDidSwitch")
#	HERE WE SEND A SIGNAL TO ALL THE OBJECTS THAT NEED TO UPDATE THE TEXTURE! ;) 
	print(currentDimension, path)
	var fondo: Sprite = get_node ("Container/Game/Fondo")
	
	#La idea es reemplazar el directorio operando strings y cargar la texture
	fondo.texture = load(path)


