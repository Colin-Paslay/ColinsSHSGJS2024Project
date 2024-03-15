extends CharacterBody2D
func _ready():
	$AnimatedSprite2D.play("Forward")
func _process(delta):
	if str(InteractHandler.result) == "RID(4093103833090)": 
		InteractHandler.interactBool = false
		InteractHandler.talkingHead = "Small Ghost 2"
		InteractHandler.dialogState = true
