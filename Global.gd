extends Node
	
#var objectsDict = {"paper": false, "tint": false, "code": false, "chair":false}
var lifes = 6 
var canTravel = false

class Puzzles:
	var availability = {"puz1": false, "puz2": false}

# por que no puedo asignar objectsDict a interacted e inventory?

class Items:
	var scene = {"paper": false, "tint": false, "code": false, "chair":false}
	var inventory = {"paper": false, "tint": false, "code": false, "chair":false}

	func numberOfInteracted():
			var numberOfInteracted = 0
			for key in scene.keys():
				if scene[key] == true:
					numberOfInteracted += 1
			return numberOfInteracted

var items: Items
var puzzles: Puzzles

func _init():
	items = Items.new()
	puzzles = Puzzles.new()
	
func didInteractWith(object):

	if items.interacted.numberOfInteracted() == 6:
		canTravel = true
		# O DIRECTAMENTE LLAMAR A LA FUNCION 
		pass
	else:
		items.scene[object] = true
		updateInventory(object)

func updateInventory(object):
	var possibleInventoryItem = items.inventory[object]
	if possibleInventoryItem != null:
		items.inventory[object] = true


func didUnlockObject(withName):
	print(withName)

