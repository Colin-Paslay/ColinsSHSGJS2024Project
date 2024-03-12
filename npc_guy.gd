extends CharacterBody2D
var state = 'hello'
signal interact()
func _ready():
	$AnimatedSprite2D.play("default")

func _on_interact():
	print("it worked")
