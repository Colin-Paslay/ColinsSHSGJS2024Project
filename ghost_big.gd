extends CharacterBody2D
var stage = 'hello'

func _ready():
	$AnimatedSprite2D.play("default")

func _process(delta):
	if str(InteractHandler.result) == "RID(4058744094720)" and stage == 'hello': 
		InteractHandler.interactBool = false
		InteractHandler.talkingHead = "Big Ghost"
		InteractHandler.dialogState = true
		stage == 'goodbye'
