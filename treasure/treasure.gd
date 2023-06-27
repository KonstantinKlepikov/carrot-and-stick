extends Area2D

@export var treasure: int = 1000


func update_treasure_label(money: int) -> void:
	$TreasureLabel.text = str(money)


func _process(delta: float) -> void:
	pass
