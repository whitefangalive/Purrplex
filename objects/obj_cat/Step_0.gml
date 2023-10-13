 // You can write your code in this editor

key_w = (keyboard_check(obj_settings.key_up) || (gamepad_axis_value(0, gp_axislv) < 0));
key_s = (keyboard_check(obj_settings.key_down) || (gamepad_axis_value(0, gp_axislv) > 0));
key_a = keyboard_check(obj_settings.key_left) || (gamepad_axis_value(0, gp_axislh) < 0);
key_d = keyboard_check(obj_settings.key_right) || (gamepad_axis_value(0, gp_axislh) > 0);

if key_a == 1 {
	image_xscale = -1;
}
if key_d == 1 {
	image_xscale = 1;
}

	var Hmove = key_d - key_a;

	hsp = Hmove * walk_speed;

	var Vmove = key_s - key_w;

	vsp = Vmove * walk_speed;
	
	while_counter = 0;

if (!place_meeting(x,y+grav, obj_collision_parent)) {
	y += grav;
	grav += 1;
} else {
		grav = max_grav;
}

//vertical moving collide
if (place_meeting(x,y+vsp,obj_collision_parent)) {
while (!place_meeting(x,y+sign(vsp),obj_collision_parent) && (while_counter < 50)) {
  y = y + sign(vsp);
  while_counter = while_counter + 1;
   }
 vsp = 0;
}
// horizontal moving collide
if (place_meeting(x+hsp,y,obj_collision_parent)) {
while ((!place_meeting(x+sign(hsp),y,obj_collision_parent)) && (while_counter < 50)) {
  x = x + sign(hsp);
  while_counter = while_counter + 1;
   }
 hsp = 0;
}

	x = x + hsp;
	if (place_meeting(x+walk_speed,y,obj_collision_parent) || (place_meeting(x-walk_speed,y,obj_collision_parent)) && vsp != 0) {
		grav = 0;
		y = y + vsp;
	}