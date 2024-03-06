extends CharacterBody2D

const SPEED = 64.0

func _physics_process(delta):
	var directionx = Input.get_axis("ui_left", "ui_right")
	var directiony = Input.get_axis("ui_up", "ui_down")
	if directionx < 0: 
		$AnimatedSprite2D.play("WalkingLeft")
	elif directionx > 0: $AnimatedSprite2D.play("WalkingRight")
	else: pass
	if directiony > 0: $AnimatedSprite2D.play("WalkingForward")
	elif directiony < 0: $AnimatedSprite2D.play("WalkingBackward")
	else: pass
	if directionx or directiony:
		velocity.x = directionx * SPEED
		velocity.y = directiony * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		$AnimatedSprite2D.stop()
	move_and_slide()
