extends CharacterBody2D
func _ready():
	$AnimatedSprite2D.play("Forward")
func _process(delta):
	if str(InteractHandler.result) == "RID(4075923963905)": 
		InteractHandler.interactBool = false
		InteractHandler.talkingHead = "Small Ghost 1"
		InteractHandler.dialogState = true
