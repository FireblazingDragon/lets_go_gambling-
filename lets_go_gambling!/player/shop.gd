extends Panel

@onready var close_button = $Button

func _ready() -> void:
	hide()
	close_button.pressed.connect(_on_close_pressed)
func openshop() -> void:
	show()
func _on_close_pressed() -> void:
	hide()
	
