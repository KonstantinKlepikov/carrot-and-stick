extends CanvasLayer


func update_treasure_label(treasure: int) -> void:
    $GoldLabel.text = "Treasure: " + str(treasure)
