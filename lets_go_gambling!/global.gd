extends Node

var cells: int = 500
var money: String = ""

# Conversion rates
const CELLS_PER_ORGAN = 1000
const ORGANS_PER_LIMB = 12
const LIMBS_PER_TORSO = 4
const TORSOS_PER_BODY = 2

func _physics_process(_delta: float) -> void:
	# Calculate what you COULD have (without removing cells)
	var organs = int(cells / CELLS_PER_ORGAN)
	var limbs = int(organs / ORGANS_PER_LIMB)
	var torsos = int(limbs / LIMBS_PER_TORSO)
	var bodies = int(torsos / TORSOS_PER_BODY)
	
	money = "Cells: " + str(cells) + "\n" + \
		"Organs: " + str(organs) + "\n" + \
		"Limbs: " + str(limbs) + "\n" + \
		"Torsos: " + str(torsos) + "\n" + \
		"Bodies: " + str(bodies)
