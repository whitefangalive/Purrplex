if (keyboard_check_pressed(ord("S"))) {
	fillTheGrid(floor(x/obj_grid.cell_width), floor(y/obj_grid.cell_height), floor(target_x/obj_grid.cell_width), floor(target_y/obj_grid.cell_height))
}

if (path_exists(path_building)) {
	followThePath(path_building);
}
if (!place_meeting(x, y+1, obj_collision_parent)) {
	speed_v = speed_v + game_gravity;
}

collide();