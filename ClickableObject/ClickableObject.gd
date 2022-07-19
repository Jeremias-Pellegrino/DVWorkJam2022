extends Area2D

onready var sprite : Sprite = $Sprite
# Hay que ajustar el script para que la animacion del glow (shader)
# comience al hacer hover
func _on_Area2D_mouse_entered():
	sprite.material.set_shader_param("width", 20)
	

func _on_Area2D_mouse_exited():
	sprite.material.set_shader_param("width", 0)
