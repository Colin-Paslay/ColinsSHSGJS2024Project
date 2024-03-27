extends CharacterBody2D
var stage = "closed"
func _process(delta):
	if str(InteractHandler.result) == str(self.get_rid()) and stage == "closed": 
		InteractHandler.interactBool = false
		InteractHandler.talkingHead = "System"
		InteractHandler.dialogState = true
		stage == "open"
		$Sprite2D.frame += 1
