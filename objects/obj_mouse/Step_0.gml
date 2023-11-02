
if (path_exists(path_building)) {
	scr_followThePath(path_building);
} else {
	if (!array_contains(cheeseYouCannotGetTo, currentCheeseTryingToGeTo)) {
		array_push(cheeseYouCannotGetTo, currentCheeseTryingToGeTo);
		find_target();
		alarm[0] = 1;
	}
}
if (!place_meeting(x, y+1, obj_collision_parent)) {
	speed_v = speed_v + game_gravity;
}

collide();