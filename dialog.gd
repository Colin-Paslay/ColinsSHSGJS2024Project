extends Control

var faceset
func _process(delta):
	if InteractHandler.dialogState == true:
		$CanvasLayer/DialogBoxFaceset.show()
	if InteractHandler.talkingHead == "Big Ghost":
		faceset = load("res://NinjaAdventure/Actor/Boss/GiantSpirit/Faceset.png")
		$CanvasLayer/DialogBoxFaceset/DialogBox.set_text("The Muffin Man?")
		$CanvasLayer/DialogBoxFaceset/Facebox.set_texture(faceset)
