if (keyboard_check_pressed(ord("S"))) {

}

if (path_exists(path_building)) {
	scr_followThePath(path_building);
}
if (!place_meeting(x, y+1, obj_collision_parent)) {
	speed_v = speed_v + game_gravity;
}

collide();