open = false;

/// animation engine 


frame = 0;
curveSped = 0.02;
curveAsset = a_easeInOutElastic;

audio_emitter = audio_emitter_create();


// Use a linear distance falloff model
audio_emitter_falloff(audio_emitter, 75, 2000, 1);
once = false;
