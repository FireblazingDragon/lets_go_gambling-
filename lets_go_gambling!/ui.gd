@tool
extends Control

func _physics_process(_delta: float) -> void:
	$CanvasLayer/Money.text = Global.money
