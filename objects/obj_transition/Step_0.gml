image_xscale = EaseInQuad(scale, minimum - 0.00001, maximum+ 0.5, maximum+1);
image_yscale = EaseInQuad(scale, minimum - 0.00001, maximum+ 0.5, maximum+1);
if (transition == 1) {
	scale += sSpeed;
} else {
	scale -= sSpeed;
}
if (transition = 0 && scale <= minimum) {
	transition = 1;
	alarm[0] = 1;
}
if (transition == 1 && scale >= maximum) {
	instance_destroy();
}