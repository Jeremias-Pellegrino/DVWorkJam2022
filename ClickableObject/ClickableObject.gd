extends Area2D

onready var sprite : Sprite = $Grass1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Area2D_mouse_entered():
	$Grass1.queue_free()
	print("_on_Area2D_mouse_entered")

func _on_Area2D_body_entered(body):
	sprite.rotate(1/2)
	print("_on_Area2D_mouse_entered")
