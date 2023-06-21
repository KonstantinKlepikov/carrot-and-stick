extends Area2D
@export var treasure: int = 1000

var list_of_visible_golden = []
@onready var coll_radius: int = $CollisionTreasure.shape.radius


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	if treasure % 1000 == 0:
		var pos_of_treasure = get_rand_pos()
		var tile_region = get_tile_region()
		spawn(pos_of_treasure, tile_region)


# get global position for spawned treasure
func get_rand_pos() -> Vector2:
	var t = randf_range(0, 2 * PI)
	var r = sqrt(randf_range(0, coll_radius ** 2))
	return Vector2(round(r * cos(t)), round(r * sin(t)))


# get treasue tile FIXME:
func get_tile_region() -> Rect2:
	return Rect2(732, 71, 14, 10)


# spawn treasuries
func spawn(spawn_position, tile_region):
	var instance = get_node("Golden").duplicate()
	instance.region_rect = tile_region
	instance.position = spawn_position
	instance.visible = true
	add_child(instance)
	list_of_visible_golden.append(instance)


# clear last added treasure
func clear_spawned():
	list_of_visible_golden[-1].queue_free()
