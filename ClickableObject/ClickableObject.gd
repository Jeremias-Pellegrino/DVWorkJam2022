extends Area2D

onready var sprite : Sprite = $Sprite

signal didInspectObject(object)

func _ready():
	pass
	
func _on_Area2D_mouse_entered():
	sprite.material.set_shader_param("width", 20)

func _on_Area2D_mouse_exited():
	sprite.material.set_shader_param("width", 0)

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseMotion:
		print("reemplazar para usar el click")

func _on_Area2D_area_entered(area):
#	Aca 
	emit_signal("didInspectObject","chair")
