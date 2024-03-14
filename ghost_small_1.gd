extends CharacterBody2D
var state = 'hello'
var inter
func _ready():
	$AnimatedSprite2D.play("Forward")
