extends Node2D
@export var money: int = 1000
@onready var treasure = get_node("/root/Treasure")


# func _ready() -> void:
# 	treasure.instance()


func _process(delta: float) -> void:
	# treasure score
	money += 100
	$HUD.update_treasure_label(money)
	treasure.update_treasure_label(money)

	if Input.is_action_pressed("ui_accept"):
		get_tree().change_scene_to_file(Global.SCENE_MAIN_MENU)


func _input(event: InputEvent) -> void:
	if event.is_action_released("pause"):
		call_deferred("_pause")


func _pause() -> void:
	$Paused.pause()
	get_tree().paused = true
