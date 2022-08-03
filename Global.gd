extends Node
	
#var objectsDict = {"paper": false, "tint": false, "code": false, "chair":false}

class Puzzles:
	var availability = {"puz1": false, "puz2": false}
	
# por que no puedo asignar objectsDict a interacted e inventory?
class Objects:
	var interacted = {"paper": false, "tint": false, "code": false, "chair":false}
	var inventory = {"paper": false, "tint": false, "code": false, "chair":false}

var objects: Objects
var puzzles: Puzzles

func _init():
	objects = Objects.new()
	puzzles = Puzzles.new()
	
#func _ready():

func updateInventory():
	pass
	
func didUnlockObject(withName):
	print(withName)

