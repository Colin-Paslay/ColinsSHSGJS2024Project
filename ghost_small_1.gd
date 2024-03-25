extends CharacterBody2D
func _ready():
	$AnimatedSprite2D.play("Forward")
func _process(delta):
	if str(InteractHandler.result) == str(self.get_rid()): 
		InteractHandler.interactBool = false
		InteractHandler.talkingHead = "Small Ghost 1"
		InteractHandler.dialogState = true
