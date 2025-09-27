extends Area2D

var reaper = get_parent()

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.name == "Player":   # optional: filter for certain bodies
		reaper._on_npc_interact()
