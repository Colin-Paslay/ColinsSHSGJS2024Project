extends Node2D
@onready var interior = $Interior
@onready var exterior = $Exterior

func _process(delta):
	pass
func _on_area_2d_body_entered(body):
	interior.show()
	exterior.hide()
func _on_area_2d_body_exited(body):
	interior.hide()
	exterior.show()
