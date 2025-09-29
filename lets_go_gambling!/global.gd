extends Node

var cells: int = 500
var money: String = ""

# Conversion rates
const CELLS_PER_ORGAN = 1000
const ORGANS_PER_LIMB = 12
const LIMBS_PER_TORSO = 4
const TORSOS_PER_BODY = 2

@warning_ignore("unused_parameter")
func _physics_process( _delta: float ) -> void:
	# Calculate what you COULD have (without removing cells)
	@warning_ignore("integer_division")
	var organs = int(cells / CELLS_PER_ORGAN)
	@warning_ignore("integer_division")
	var limbs = int(organs / ORGANS_PER_LIMB)
	@warning_ignore("integer_division")
	var torsos = int(limbs / LIMBS_PER_TORSO)
	@warning_ignore("integer_division")
	var bodies = int(torsos / TORSOS_PER_BODY)
	
	money = "Cells: " + str(cells) + "\n" + \
		"Organs: " + str(organs) + "\n" + \
		"Limbs: " + str(limbs) + "\n" + \
		"Torsos: " + str(torsos) + "\n" + \
		"Bodies: " + str(bodies)
	
