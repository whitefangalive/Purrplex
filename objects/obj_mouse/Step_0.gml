if (keyboard_check_pressed(ord("S"))) {
	speed_h = 0;
     speed_v = 0;
     if path_exists(path_building) {
         path_delete (path_building);
     }
     path_point = 0 ;
     action = 0 ;
     jump_action = 0 ;

	fillTheGrid(floor(x/obj_grid.cell_width), floor(y/obj_grid.cell_height), floor(target_x/obj_grid.cell_width), floor(target_y/obj_grid.cell_height))
}

if (path_exists(path_building)) {
	scr_followThePath(path_building);
}
if (!place_meeting(x, y+1, obj_collision_parent)) {
	speed_v = speed_v + game_gravity;
}

collide();