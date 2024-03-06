extends CharacterBody2D
var state = 'hello'
func _ready():
	$AnimatedSprite2D.play("Forward")
	

func dialogue(state):
	if state == 'hello':
		print("hello")
