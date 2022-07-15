extends KinematicBody2D

class_name Margarete

onready var _animated_sprite: AnimatedSprite = $AnimatedSprite

func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		_animated_sprite.play("run")
		_animated_sprite.flip_h = false

	elif Input.is_action_pressed("ui_left"):
		_animated_sprite.play("run")
		_animated_sprite.flip_h = true
		
	else:
		_animated_sprite.play("default")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
