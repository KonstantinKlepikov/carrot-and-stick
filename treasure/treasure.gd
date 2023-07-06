extends Area2D


func update_treasure_label(money: int) -> void:
	$TreasureLabel.text = str(money)


func _process(delta: float) -> void:
	pass
