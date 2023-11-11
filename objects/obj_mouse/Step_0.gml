if (path_exists(path_building)) {
	scr_followThePath(path_building);
} else {
	if (!array_contains(cheeseYouCannotGetTo, currentCheeseTryingToGeTo)) {
		array_push(cheeseYouCannotGetTo, currentCheeseTryingToGeTo);
		find_target();
		alarm[0] = 1;
	}
}
if (!place_meeting(x, y+1, obj_collision_parent)) {
	speed_v = speed_v + game_gravity;
}

collide();
soundTimer++;
if (soundTimer > maxSoundTime) {
	maxSoundTime = irandom_range(100, 190);
	soundTimer = 0;
	audio_emitter_position(audio_emitter, x, y, 0);
	audio_play_sound_on(audio_emitter, asset_get_index("rat" + string(irandom_range(1, 4))), false, 1000);
}
