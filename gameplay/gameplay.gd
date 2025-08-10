extends Node2D


func _input(event: InputEvent) -> void:
	if event.is_action_released("pause"):
		call_deferred("_pause")


func _pause() -> void:
	$Paused.pause()
	get_tree().paused = true
	

func _on_bg_mouse_entered() -> void:
	# set is mouse in map
	Gamevars.in_map = true


func _on_bg_mouse_exited() -> void:
	# set is mouse out of map
	Gamevars.in_map = false
