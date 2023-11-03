if (instance_number(obj_mouse) <= 0) {
	open = true;
}

if (open == true) {
	frame += curveSped;
	image_index = 1;
	if (distance_to_object(obj_player_parent) < 2) {
		room_goto_next();
	}
	if (once == false) {
		audio_emitter_position(audio_emitter, x, y, 0);
		audio_play_sound_on(audio_emitter, sfx_crumble, false, 1000);
		var _ps = part_system_create();
		part_system_draw_order( _ps, true);

		var _ptype1 = part_type_create();
		part_type_sprite( _ptype1, spr_door_vfx, 1, 0, 0);
		part_type_size( _ptype1, 0.5, 0.5, 0, 0.2 );
		part_type_scale( _ptype1, .8, .8);
		part_type_speed( _ptype1, 8, 12, 0, 1);
		part_type_direction( _ptype1, 80, 100, 0, 2);
		part_type_gravity( _ptype1, 0.5, 270);
		part_type_orientation( _ptype1, 0, 360, irandom_range(-2,2), 2, false);
		part_type_life( _ptype1, 30, 50);

		var _pemit1 = part_emitter_create( _ps );
		part_emitter_region( _ps, _pemit1, -64, 64, -64, 64, ps_shape_diamond, ps_distr_gaussian );
		part_emitter_burst(_ps, _pemit1, _ptype1, 5);

		part_system_position(_ps, x, y);
			
		once = true;
	}
}




var _curveStruct = animcurve_get(curveAsset);
var _channel = animcurve_get_channel(_curveStruct, "x");
value = image_xscale * animcurve_channel_evaluate(_channel, frame);
