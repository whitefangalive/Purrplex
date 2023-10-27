var clickedPause = keyboard_check_pressed(obj_settings.key_pause);
if clickedPause {
	paused = !paused;
}

if (paused == true && clickedPause) {
	instance_deactivate_all(true);
	instance_activate_object(obj_settings);
	instance_create_layer(x, y, "menuLayer", obj_pause_menu);
} else if (clickedPause) {
	unpause();
}
var numberOfMice = instance_number(obj_mouse);
var miceWhoHaveEscaped = [];
with (obj_mouse) {
	if (escaped && !array_contains(miceWhoHaveEscaped, id)) {
		array_push(miceWhoHaveEscaped, id);
	}
}
if (array_length(miceWhoHaveEscaped) == numberOfMice && (numberOfMice != 0)) {
	gameLose();
}
