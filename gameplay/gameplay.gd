extends Node2D
@export var money: int = 1000


func _process(delta: float) -> void:

	if $HUD.visible == false:
		$HUD.show()

	# treasure score
	money += 100
	$HUD.update_treasure_label(money)
	$Treasure.update_treasure_label(money)

	if Input.is_action_pressed("ui_accept"):
		get_tree().change_scene_to_file(Global.SCENE_MAIN_MENU)


func _input(event: InputEvent) -> void:
	if event.is_action_released("pause"):
		call_deferred("_pause")


func _pause() -> void:
	$Paused.pause()
	$HUD.hide()
	get_tree().paused = true
