if (instance_number(obj_mouse) <= 0) {
	open = true;
}

if (open == true) {
	frame += curveSped;
	image_index = 1;
	if (distance_to_object(obj_player_parent) < 2) {
		room_goto_next();
	}
}




var _curveStruct = animcurve_get(curveAsset);
var _channel = animcurve_get_channel(_curveStruct, "x");
value = animcurve_channel_evaluate(_channel, frame);
