extends Node2D

onready var dimension1Node = $Container/Dimension1
onready var dimension2Node = $Container/Dimension2
onready var global: Node = get_node("/root/Global")

var timer: Timer = Timer.new()
var isCurrentDimension1 = true

func _ready():
	timer.connect("timeout", self,"switchDimension") 
	timer.set_wait_time(30.0)
	timer.set_one_shot(false)
	add_child(timer)

func startTimer():
	timer.start()
	
func stopTimer():
	timer.stop()
	
func switchDimension():
	global.lifes -= 1
	if global.lifes == 0:
		#aca pierde se vuelve al meno o algo...
		self.queue_free()
	
	isCurrentDimension1 = not isCurrentDimension1
	if isCurrentDimension1:
		dimension2Node.hide()
	else:
		dimension2Node.show()
	
func _process(delta):
	pass
