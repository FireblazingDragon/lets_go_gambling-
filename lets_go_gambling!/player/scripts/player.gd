extends CharacterBody2D

@export var speed := 70.0
@onready var sprite : Sprite2D = $Sprite2D
@onready var anim: AnimationPlayer = $AnimationPlayer


func _physics_process( _delta ):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	input_vector = input_vector.normalized()
	
	velocity = input_vector * speed
	move_and_slide()

	_update_animation(input_vector)

func _update_animation(direction: Vector2):
	if direction == Vector2.ZERO:
		anim.play("idle") # pick idle animation
	else:
		if direction.x > 0:
			sprite.scale.x = 1
		elif direction.x < 0:
			sprite.scale.x = -1
		else:
			pass
		if abs(direction.x) > abs(direction.y):
			anim.play("walk_side")
		else:
			if direction.y > 0:
				anim.play("walk_down")
			else:
				anim.play("walk_up")
