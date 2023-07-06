extends CanvasLayer


func update_treasure_label(money: int) -> void:
	$GoldLabel.text = str(money)
