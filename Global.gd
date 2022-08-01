extends Node

class InventoryControl:
	var objects = {"paper": false, "tint": false, "code": false, "chair":false}

var IC = InventoryControl.new()

func updateInventory():

	IC.connect("didInspectObject")
