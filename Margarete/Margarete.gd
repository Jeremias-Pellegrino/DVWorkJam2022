extends KinematicBody2D

class_name Margarete

enum state {
	MOVE, 
	IDLE

}
onready var animation: AnimatedSprite = $AnimatedSprite
var speed = 200
var speedVector = Vector2(speed,speed)
var last_mouse_pos = null

func _input(event):
	if event.is_action_pressed("mouse_click"):
		last_mouse_pos = get_viewport().get_mouse_position()

func _physics_process(delta):
	if last_mouse_pos:
		var direction_vector = (last_mouse_pos - global_position)
		
		if direction_vector.length() < 3:
			return
	
		var velocity = move_and_slide(direction_vector.normalized() * speedVector)
