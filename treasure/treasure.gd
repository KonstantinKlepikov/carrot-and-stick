extends Area2D
@export var treasure: int = 1000


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	if treasure < 10000:
		$GoldHeapq1.visible = true
		$GoldHeapq2.visible = false
	elif treasure > 10000 and treasure < 100000:
		$GoldHeapq1.visible = false
		$GoldHeapq2.visible = true
