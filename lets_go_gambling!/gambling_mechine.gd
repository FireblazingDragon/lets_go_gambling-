extends Node2D

func _ready() -> void:
	idleing()

func idleing():
	$Sprite/AnimationPlayer.play("Idle")

func _on_area_2d_body_entered(_body: Node2D) -> void:
	$Menu/CanvasLayer.show()


func _on_area_2d_body_exited(_body: Node2D) -> void:
	$Menu/CanvasLayer.hide()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	$Sprite/AnimationPlayer.play("Idle")
