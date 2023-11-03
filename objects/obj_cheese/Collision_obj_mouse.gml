var closestMouse = instance_nearest(x, y, obj_mouse);
instance_destroy();
with (closestMouse) {
	hasCheese = true;
	audio_emitter = audio_emitter_create();

	audio_emitter_falloff(audio_emitter, 50, 2000, 1);
	audio_emitter_position(audio_emitter, x, y, 0);
	audio_play_sound_on(audio_emitter, sfx_munch, false, 1000);
	gameLose();
}