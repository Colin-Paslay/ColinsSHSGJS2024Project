extends CharacterBody2D

var SPEED = 64.0
var stage = 0

func _physics_process(delta):
	var directionx = Input.get_axis("ui_left", "ui_right")
	var directiony = Input.get_axis("ui_up", "ui_down")
	if directiony > 0:
		if InteractHandler.Stage == 0:
			$AnimatedSprite2D.play("WalkingForward")
		elif InteractHandler.Stage == 1:
			$AnimatedSprite2D.play("SkelForward")
		velocity.y = directiony * SPEED
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$RayCast2D.target_position = Vector2(0,16)
	elif directiony < 0: 
		if InteractHandler.Stage == 0:
			$AnimatedSprite2D.play("WalkingBackward")
		elif InteractHandler.Stage == 1:
			$AnimatedSprite2D.play("SkelBack")
		velocity.y = directiony * SPEED
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$RayCast2D.target_position = Vector2(0,-16)
	elif directionx < 0: 
		if InteractHandler.Stage == 0:
			$AnimatedSprite2D.play("WalkingLeft")
		elif InteractHandler.Stage == 1:
			$AnimatedSprite2D.play("Skelleft")
		velocity.x = directionx * SPEED
		velocity.y = move_toward(velocity.y, 0, SPEED)
		$RayCast2D.target_position = Vector2(-16,0)
	elif directionx > 0: 
		if InteractHandler.Stage == 0:
			$AnimatedSprite2D.play("WalkingRight")
		elif InteractHandler.Stage == 1:
			$AnimatedSprite2D.play("Skelright")
		velocity.x = directionx * SPEED
		velocity.y = move_toward(velocity.y, 0, SPEED)
		$RayCast2D.target_position = Vector2(16,0)
	else: 
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
		$AnimatedSprite2D.stop()
	move_and_slide()
func _input(event):
	if event.is_action_pressed("sprint"):
		SPEED = 128.0
	if event.is_action_released("sprint"):
		SPEED = 64.0
	if event.is_action_pressed("Interact"):
		InteractHandler.result = $RayCast2D.get_collider_rid()
		InteractHandler.interactBool = true
		if str(InteractHandler.result) == "RID(0)":
			InteractHandler.talkingHead = "None"
	if event.is_action_pressed("LeftClick"):
		$".".position = get_global_mouse_position()
