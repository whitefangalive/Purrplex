
if (keyboard_check_pressed(obj_settings.key_pause)) {
	paused = !paused;
}

if (paused == true) {
	instance_deactivate_all(true);
	instance_activate_object(obj_settings);
	instance_create_layer(x, y, "menuLayer", obj_pause_menu);
} else {
	instance_destroy(obj_pause_menu);
	instance_activate_all();
}