extends CharacterBody2D
var state = 'hello'
func _ready():
	$AnimatedSprite2D.play("default")
	

func dialogue(state):
	if state == 'hello':
		print("hello")
