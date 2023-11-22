
	
var clickedPause = keyboard_check_pressed(obj_settings.key_pause);
if clickedPause {
	if(!sprite_exists(screenShot)){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);
    }
}