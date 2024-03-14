extends CharacterBody2D
var state = 'hello'

func _ready():
	$AnimatedSprite2D.play("default")

func _process(delta):
	if str(InteractHandler.result) == "RID(4045859192832)" and state == 'hello': 
		print("Hello my name is")
		print("your best friend")
		state = 'goodbye'
