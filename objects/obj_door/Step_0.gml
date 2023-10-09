if (instance_number(obj_mouse) <= 0) {
	open = true;
}

if (open == true) {
	image_index = 1;
	if (distance_to_object(obj_player_parent) < 2) {
		room_goto_next();
	}
}