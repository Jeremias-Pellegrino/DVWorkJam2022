extends Area2D

onready var sprite : Sprite = $Sprite

export var spritePath: String

func _ready():

	if spritePath == null || not spritePath.empty():
		sprite.texture = load(spritePath)
	else:
		pass
	
func _on_Area2D_mouse_entered():
	print("PRUEBA", spritePath)
	print(sprite.material)
	sprite.material.set_shader_param("width", 20)

func _on_Area2D_mouse_exited():
	sprite.material.set_shader_param("width", 0)

func _input_event(viewport, event, shape_idx):
	print(viewport, event, shape_idx, spritePath)
	if event is InputEventMouseMotion:
		print("FUI YO")
		
