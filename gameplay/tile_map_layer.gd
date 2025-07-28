extends TileMapLayer

func _ready() -> void:
	var filled_tiles := get_used_cells()
	for filled_tile: Vector2i in filled_tiles:
		var n_tiles := get_surrounding_cells(filled_tile)
		for n_tile: Vector2i in n_tiles:
			if get_cell_source_id(n_tile) == -1:
				set_cell(n_tile, 2, Vector2i(0, 5))
