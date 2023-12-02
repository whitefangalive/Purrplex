/// @description Movement / Meow

key_w = (keyboard_check(obj_settings.key_up) || (gamepad_axis_value(0, gp_axislv) < 0) || keyboard_check(vk_up));
key_s = (keyboard_check(obj_settings.key_down) || (gamepad_axis_value(0, gp_axislv) > 0) || keyboard_check(vk_down));
key_a = keyboard_check(obj_settings.key_left) || (gamepad_axis_value(0, gp_axislh) < 0)  || keyboard_check(vk_left);
key_d = keyboard_check(obj_settings.key_right) || (gamepad_axis_value(0, gp_axislh) > 0)  || keyboard_check(vk_right);
keyJump = keyboard_check_released(obj_settings.key_jump) || keyboard_check_released(vk_up);
jumpHold = keyboard_check(obj_settings.key_jump) || keyboard_check(vk_up);

if key_a == 1 {
	image_xscale = -scale;
	sprite_index = spr_cat_walk;
}
if key_d == 1 {
	image_xscale = scale;
	sprite_index = spr_cat_walk;
}
if (key_d == 0 && key_a == 0) {
	sprite_index = spr_cat;
}

	hsp = (key_d - key_a) * walk_speed;
	while_counter = 0;

vsp += grav;
if (jumpHold && place_meeting(x, y+1, obj_collision_parent) && jump_speed > max_jump_speed && !keyboard_check(key_s)) {
jump_speed -= 0.25;
}

if (keyJump && place_meeting(x, y+1, obj_collision_parent)) {
	vsp = jump_speed;
	jump_speed = min_jump_speed;
}

//vertical moving collide
if (place_meeting(x + hsp, y + (vsp),obj_both_collide)) || (place_meeting(x + hsp, y + (vsp),obj_player_collision)) {

	while !place_meeting(x + hsp, y + sign(vsp), obj_collision_parent) {
		y = y + sign(vsp);
		while_counter = while_counter + 1;
		}
		   
		if (partDone == false) {
			partDone = true;
			var _ps = part_system_create();
			part_system_draw_order( _ps, true);

			var _ptype1 = part_type_create();
			part_type_sprite( _ptype1, spr_wall, 1, 0, 0);
			part_type_size( _ptype1, 0.5, 0.5, 0, 0.1 );
			part_type_scale( _ptype1, .2, .2);
			part_type_speed( _ptype1, 8, 12, 0, 1);
			part_type_direction( _ptype1, 80, 100, 0, 2);
			part_type_gravity( _ptype1, 0.5, 270);
			part_type_orientation( _ptype1, 0, 360, 2, 0, false);
			part_type_life( _ptype1, 30, 50);

			var _pemit1 = part_emitter_create( _ps );
			part_emitter_region( _ps, _pemit1, -64, 64, -64, 64, ps_shape_diamond, ps_distr_gaussian );
			part_emitter_burst(_ps, _pemit1, _ptype1, 2);

			part_system_position(_ps, x, y+10);
		}
		if (!keyboard_check(key_s) || !keyboard_check(obj_settings.key_jump) || !(place_meeting(x + hsp, y + (vsp),obj_player_collision))) {
			vsp = 0;
		}
		
} else {
	partDone = false;
	
}

// horizontal moving collide
if (place_meeting(x+hsp,y,obj_both_collide)) || (place_meeting(x+hsp,y,obj_player_collision)) {
while ((!place_meeting(x+sign(hsp),y,obj_collision_parent)) && (while_counter < 50)) {
  x = x + sign(hsp);
  while_counter = while_counter + 1;
   }
 if (((key_d - key_a) != 0) && place_meeting(x+hsp,y,obj_cat_tree)) {
 vsp = -2;
 } 
 hsp = 0;
}
if ((key_w != 0) && ((place_meeting(x+walk_speed+1, y, obj_cat_tree)) 
 || place_meeting(x-walk_speed-1, y, obj_cat_tree))) {
	vsp = -2;
 }

x = x + hsp;
y = y + vsp;

//Meowing
if (keyboard_check_pressed(vk_anykey)) {
	if (!keyboard_check_pressed(obj_settings.key_up) && !keyboard_check_pressed(obj_settings.key_down) && 
	    !keyboard_check_pressed(obj_settings.key_right) && !keyboard_check_pressed(obj_settings.key_left) && 
		!keyboard_check_pressed(obj_settings.key_jump) && !keyboard_check_pressed(obj_settings.key_pause) &&
		!keyboard_check_pressed(vk_up)) {
		var rand = irandom_range(1, 100);
		//rare funny meow
		if (rand == 100) {
			audio_play_sound(cat50, 1, false, global.volume_setting, 0, random_range(0.95, 1.1));
		} else {
			//standard meow
			audio_play_sound(asset_get_index("cat" + string(irandom_range(1, 5))), 1, false, global.volume_setting, 0, random_range(0.95, 1.1));
		}
	}
}