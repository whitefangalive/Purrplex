transition = 0;
minimum = 0.02;
maximum = 23;
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