extends Node2D
@export var money: int = 1000


func _process(_delta: float) -> void:

	if $HUD.visible == false:
		$HUD.show()


func _input(event: InputEvent) -> void:
	if event.is_action_released("pause"):
		call_deferred("_pause")


func _pause() -> void:
	$Paused.pause()
	$HUD.hide()
	get_tree().paused = true
