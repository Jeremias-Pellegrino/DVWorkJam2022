tool
extends Area2D

export(Texture) var texture
onready var sprite : Sprite = $Sprite
onready var collisionS: CollisionShape2D = $CollisionShape2D

func _ready():
	if texture != null:
		sprite.texture = texture
		var size = sprite.texture.get_size() / 2
		collisionS.shape.extents = Vector2(size)
	
func _on_Area2D_mouse_entered():
	sprite.material.set_shader_param("width", 20)

func _on_Area2D_mouse_exited():
	sprite.material.set_shader_param("width", 0)

func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		didInteracWithObject()
#		

func didInteracWithObject():
	var global = get_node("/root/Global")
	global.objects.interacted[self.name] = true

	get_tree().call_group("InventoryItem", "didUnlockObject", self.name)
	
# no detecta la colision noc pocuå
func _on_Area2D_area_entered(area):
	if area is Margarete:
		var global = get_node("/root/Global")
		global.objects.interacted[self.name] = true
		print(global.objects.interacted)
#	emit_signal("didInspectObject","chair")
