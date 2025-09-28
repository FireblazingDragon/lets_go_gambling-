extends PointLight2D

@export var pulse_speed: float = 2
@export var min_energy: float = 3
@export var max_energy: float = 5
@export var min_scale: float = 1.0
@export var max_scale: float = 1.5

func _process(delta):
	var pulse = (sin(Time.get_ticks_msec() / 1000.0 * pulse_speed) + 1.0) / 2.0

	energy = lerp(min_energy, max_energy, pulse)
	
	texture_scale = lerp(min_scale, max_scale, pulse)
