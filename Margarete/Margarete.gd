extends KinematicBody2D

class_name Margarete

onready var animation: AnimatedSprite = $AnimatedSprite

func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		animation.play("run")
		animation.flip_h = false

	elif Input.is_action_pressed("ui_left"):
		animation.play("run")
		animation.flip_h = true
		
	else:
		animation.play("default")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
