extends Control

const PASSWORD = "1234"

onready var label = $VBoxContainer/MarginContainer/Label

func key_press(digit):
	if len(label.text) < 4:
		label.text += str(digit)
		
		


func _on_Button1_pressed():
	key_press(1)


func _on_Button2_pressed():
	key_press(2)



func _on_Button3_pressed():
	key_press(3)



func _on_Button4_pressed():
	key_press(4)



func _on_Button5_pressed():
	key_press(5)



func _on_Button6_pressed():
	key_press(6)


func _on_Button7_pressed():
	key_press(7)



func _on_Button8_pressed():
	key_press(8)



func _on_Button9_pressed():
	key_press(9)



func _on_Button10_pressed():
	label.text = ""



func _on_Button11_pressed():
	key_press(0)



func _on_Button12_pressed():
	if label.text == PASSWORD:
		print('correct pasword')
	else:
		print('wrong password')
		label.text = ""
