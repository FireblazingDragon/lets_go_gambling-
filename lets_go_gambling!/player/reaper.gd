extends CharacterBody2D

@onready var dialog_box = $"../UI/DialogBox"
@onready var dialog_text = dialog_box.get_node("DialogText")
@onready var shop_button = dialog_box.get_node("HBoxContainer/Shop")
@onready var leave_button = dialog_box.get_node("HBoxContainer/Leave")
@onready var area = get_node("Area2D")
func _ready():
	dialog_box.hide()
	area.body_entered.connect(_on_body_entered)

func _on_body_entered(_body):
	_on_npc_interact()

func _on_npc_interact():
	dialog_box.show()
	dialog_text.text = "Hello! I don't see many other soulless people around here, so it's great to see you! Feel free to purchase my many wares"
	
	shop_button.text = "Enter Shop"
	leave_button.text = "Leave"

	shop_button.pressed.connect(_on_shop_selected)
	leave_button.pressed.connect(_on_leave_selected)

func _on_shop_selected():
	

func _on_leave_selected():
	print("Player chose to ignore!")
	dialog_box.visible = false
	_disconnect_buttons()

func _disconnect_buttons():
	# Avoid multiple signal connections
	shop_button.pressed.disconnect(_on_shop_selected)
	leave_button.pressed.disconnect(_on_leave_selected)
