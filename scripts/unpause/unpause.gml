// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unpause(){
	if (instance_exists(obj_pause_menu)) {
		instance_destroy(obj_pause_menu.resume);
		instance_destroy(obj_pause_menu.quit);
		instance_destroy(obj_pause_menu);
	}
	obj_game.paused = false;
	instance_activate_all();
}