if (keyboard_check_pressed(ord("S"))) {
	fillTheGrid(floor(x/obj_grid.cell_width), floor(y/obj_grid.cell_height), floor(target_x/obj_grid.cell_width), floor(target_y/obj_grid.cell_height))
}