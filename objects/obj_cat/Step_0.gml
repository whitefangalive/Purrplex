 // You can write your code in this editor


key_w = (keyboard_check(obj_settings.key_up) || (gamepad_axis_value(0, gp_axislv) < 0));
key_s = (keyboard_check(obj_settings.key_down) || (gamepad_axis_value(0, gp_axislv) > 0));
key_a = keyboard_check(obj_settings.key_left) || (gamepad_axis_value(0, gp_axislh) < 0);
key_d = keyboard_check(obj_settings.key_right) || (gamepad_axis_value(0, gp_axislh) > 0);
keyJump = keyboard_check_released(obj_settings.key_jump);
jumpHold = keyboard_check(obj_settings.key_jump);

if key_a == 1 {
	image_xscale = -1;
}
if key_d == 1 {
	image_xscale = 1;
}

	hsp = (key_d - key_a) * walk_speed;
	while_counter = 0;

vsp += grav;
if (jumpHold && place_meeting(x, y+1, obj_collision_parent) && jump_speed > max_jump_speed) {
jump_speed -= 0.25;
}

if (keyJump && place_meeting(x, y+1, obj_collision_parent)) {
	vsp = jump_speed;
	jump_speed = min_jump_speed;
}

//vertical moving collide
if (place_meeting(x + hsp, y + (vsp),obj_collision_parent)) {
	if (vsp > 0 || (vsp < 1 && place_meeting(x, y - 100, obj_collision_parent))) {
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
		vsp = 0;
	}
} else {
	partDone = false;
	
}

// horizontal moving collide
if (place_meeting(x+hsp,y,obj_collision_parent)) {
while ((!place_meeting(x+sign(hsp),y,obj_collision_parent)) && (while_counter < 50)) {
  x = x + sign(hsp);
  while_counter = while_counter + 1;
   }
 hsp = 0;
 if ((key_d - key_a) != 0) {
 vsp = -2;
 } 
}

x = x + hsp;
y = y + vsp;