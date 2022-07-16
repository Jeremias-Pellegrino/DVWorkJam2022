extends KinematicBody2D

class_name Margarete

enum state {move, idle}
onready var animation: AnimatedSprite = $AnimatedSprite

func _process(_delta):
	# if state is state.idle:
	# 	return
	# if InputEventMouseButton:
	# 	animation.play("run")
	# 	animation.flip_h = false

	# elif Input.is_action_pressed("ui_left"):
	# 	animation.play("run")
	# 	animation.flip_h = true
		
	# else:
	# 	animation.play("default")
	return

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
