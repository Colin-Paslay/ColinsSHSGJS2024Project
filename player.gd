extends CharacterBody2D

const SPEED = 64.0

func _physics_process(delta):
	var directionx = Input.get_axis("ui_left", "ui_right")
	var directiony = Input.get_axis("ui_up", "ui_down")
	if directiony > 0: 
		$AnimatedSprite2D.play("WalkingForward")
		velocity.y = directiony * SPEED
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$RayCast2D.target_position = Vector2(0,16)
	elif directiony < 0: 
		$AnimatedSprite2D.play("WalkingBackward")
		velocity.y = directiony * SPEED
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$RayCast2D.target_position = Vector2(0,-16)
	elif directionx < 0: 
		$AnimatedSprite2D.play("WalkingLeft")
		velocity.x = directionx * SPEED
		velocity.y = move_toward(velocity.y, 0, SPEED)
		$RayCast2D.target_position = Vector2(-16,0)
	elif directionx > 0: 
		$AnimatedSprite2D.play("WalkingRight")
		velocity.x = directionx * SPEED
		velocity.y = move_toward(velocity.y, 0, SPEED)
		$RayCast2D.target_position = Vector2(16,0)
	else: 
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		$AnimatedSprite2D.stop()
	move_and_slide()
func _input(event):
	if event.is_action_pressed("Interact"):
		var result = $RayCast2D.get_collider()
		if result:
			pass #use singleton as a hub that can tell nodes when they should run interact script
