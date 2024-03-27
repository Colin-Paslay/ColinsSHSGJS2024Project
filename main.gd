extends Node2D

func _process(delta):
	pass
func _on_area_2d_area_entered(area):
	$Interior.show()
	$Exterior.hide()
func _on_area_2d_area_exited(area):
	$Interior.hide()
	$Exterior.show()
