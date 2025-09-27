extends Node2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	idleing()

func idleing():
	$Sprite/AnimationPlayer.play("Idle")

func _on_area_2d_body_entered(_body: Node2D) -> void:
	$Menu/CanvasLayer.show()

func _on_area_2d_body_exited(_body: Node2D) -> void:
	$Menu/CanvasLayer.hide()

func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	$Sprite/AnimationPlayer.play("Idle")

func _on_button_button_down() -> void:
	var result = 0
	$Sprite/AnimationPlayer.stop()
	Global.cells = Global.cells / 2
	$Sprite/AnimationPlayer.play("Coin Flip")
	await get_tree().create_timer(1.0).timeout
	result = rng.randf_range(0.0, 1.0)
	var coin_flip = int(round(result))
	if (coin_flip == 1):
		Global.cells = Global.cells * 4
