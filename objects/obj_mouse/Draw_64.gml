if (ds_exists(ds_gridpathfinding, ds_type_grid)) {
	draw_set_color(c_black);
	draw_set_font(Juniory);
	for (var i = 0; i < ds_grid_width(ds_gridpathfinding); ++i) {
		for (var j = 0; j < ds_grid_height(ds_gridpathfinding); ++j) {
			var value = ds_grid_get(ds_gridpathfinding, i, j);
			
			draw_text_transformed(i*obj_grid.cell_width + 8, j*obj_grid.cell_height + 8, string(value), 0.1, 0.1, 0);
		}
	}
}

if (path_exists(path_building)) {
	draw_set_color(c_red);
	draw_path(path_building, floor(x/obj_grid.cell_width), floor(y/obj_grid.cell_height), true);
	draw_set_color(c_white)
}