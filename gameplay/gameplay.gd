extends Node2D


func _input(event: InputEvent) -> void:
	if event.is_action_released("pause"):
		call_deferred("_pause")


func _pause() -> void:
	$Paused.pause()
	$HUD.hide()
	get_tree().paused = true
