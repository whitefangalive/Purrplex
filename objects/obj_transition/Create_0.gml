x = window_get_width()/2;
y = window_get_height()/2;
transition = 0;
minimum = 0.0001;
maximum = 21;
scale = maximum;
sSpeed = 0.6;
image_xscale = scale;
image_yscale = scale;
targetRoom = Level1;
function EaseLinear(inputvalue,outputmin,outputmax,inputmax) {
	return outputmax * inputvalue / inputmax + outputmin;
}
function EaseInQuad(inputvalue,outputmin,outputmax,inputmax) {

	inputvalue /= inputmax;
	return outputmax * inputvalue * inputvalue + outputmin;
}
audio_play_sound(sfx_wvoop, 10, false, 1);

