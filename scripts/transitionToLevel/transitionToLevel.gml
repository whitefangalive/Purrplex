// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function transitionToLevel(level) {
	if (!instance_exists(obj_transition)) {
		var obj = instance_create_layer(x, y, "menuLayer", obj_transition);
		obj.targetRoom = level;
	}
	
}