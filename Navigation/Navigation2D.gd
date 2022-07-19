extends Navigation2D


var target = Vector2.ZERO
var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = position.direction_to(target)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity 


#Check para ver si se presiona el click izquierdo
func _input(event):
	if event.is_action_pressed("left_click"):
		target = get_local_mouse_position()
#		_update_navigation_path($Character.position, get_local_mouse_position())

func _on_Area2D_mouse_entered():
	pass # Replace with function body.


func _on_Area2D_mouse_exited():
	pass # Replace with function body.
