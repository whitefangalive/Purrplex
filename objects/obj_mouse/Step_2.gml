var ySpeed = y - yprevious;
if (!place_meeting(x, y+10, obj_collision_parent) && ySpeed > 0) {
	vsp += grav;
} else {
	vsp = defaultVsp;
}
path_speed = vsp;