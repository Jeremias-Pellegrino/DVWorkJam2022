extends PanelContainer

export var imagePath: String

onready var textureRect: TextureRect = $Panel/CenterContainer/TextureRect
# como lo hago privado?
enum visibility {
	SHOWN, HIDDING
}

var state = visibility.SHOWN

func _ready():
	if imagePath == null || not imagePath.empty():
		textureRect.texture = load(imagePath)
	else:
		pass

#funciona muchisimo mejor que usando sprites. El texturerect es quien invoca mouse_entered..
func _on_TextureRect_mouse_entered():
	textureRect.material.set_shader_param("hide", false)

func _on_TextureRect_mouse_exited():
	textureRect.material.set_shader_param("hide", true)
