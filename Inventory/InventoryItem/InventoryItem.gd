tool
extends CenterContainer

export (Texture) var texture
onready var textureRect: TextureRect = $Panel/PanelContainer/TextureRect

func _ready():
	if texture != null:
		textureRect.texture = texture
	
func didUnlockObject(named):
	if named == self.name:
		textureRect.material.set_shader_param("hide", false)
