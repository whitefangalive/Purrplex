
visible = false;
if (dieOnce == false) {
	audio_emitter_position(audio_emitter, x, y, 0);
	audio_play_sound_on(audio_emitter, ratDie, false, 1000);
	alarm[1] = 20;
	dieOnce = true
}
