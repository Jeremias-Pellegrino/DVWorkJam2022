extends Area2D

var arrow = load("res://oak_woods_v1.0/decorations/sign.png")
func _ready():

	# esta opcion anda mucho mas fluida
	# Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

	Input.set_custom_mouse_cursor(arrow)
