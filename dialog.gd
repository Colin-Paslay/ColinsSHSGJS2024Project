extends Control

var faceset
func _process(delta):
	if InteractHandler.dialogState == true:
		$CanvasLayer/DialogBoxFaceset.show()
	if InteractHandler.talkingHead == "None":
		$CanvasLayer/DialogBoxFaceset.hide()
	elif InteractHandler.talkingHead == "System":
		faceset = load("res://NinjaAdventure/Actor/Characters/Spirit/Faceset.png")
		$CanvasLayer/DialogBoxFaceset/DialogBox.set_text("Key Get!")
		$CanvasLayer/DialogBoxFaceset/Facebox.set_texture(faceset)
	elif InteractHandler.talkingHead == "Big Ghost":
		faceset = load("res://NinjaAdventure/Actor/Boss/GiantSpirit/Faceset.png")
		$CanvasLayer/DialogBoxFaceset/DialogBox.set_text("The Muffin Man?")
		$CanvasLayer/DialogBoxFaceset/Facebox.set_texture(faceset)
	elif InteractHandler.talkingHead == "Small Ghost 1":
		faceset = load("res://NinjaAdventure/Actor/Monsters/Spirit/Faceset.png")
		$CanvasLayer/DialogBoxFaceset/DialogBox.set_text("Lorem Ipsum")
		$CanvasLayer/DialogBoxFaceset/Facebox.set_texture(faceset)
	elif InteractHandler.talkingHead == "Small Ghost 2":
		faceset = load("res://NinjaAdventure/Actor/Monsters/Flam2/Faceset.png")
		$CanvasLayer/DialogBoxFaceset/DialogBox.set_text("Howdy!")
		$CanvasLayer/DialogBoxFaceset/Facebox.set_texture(faceset)
