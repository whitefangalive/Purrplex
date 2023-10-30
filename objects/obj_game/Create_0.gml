function EaseLinear(inputvalue,outputmin,outputmax,inputmax) {
	return outputmax * inputvalue / inputmax + outputmin;
}

function EaseInQuad(inputvalue,outputmin,outputmax,inputmax) {

	inputvalue /= inputmax;
	return outputmax * inputvalue * inputvalue + outputmin;
}

function EaseInOutQuad(inputvalue,outputmin,outputmax,inputmax) {

inputvalue /= inputmax * 0.5;

if (inputvalue < 1)
{
    return outputmax * 0.5 * inputvalue * inputvalue + outputmin;
}

return outputmax * -0.5 * (--inputvalue * (inputvalue - 2) - 1) + outputmin; 
}

function EaseInCubic(inputvalue,outputmin,outputmax,inputmax) {

return outputmax * power(inputvalue/inputmax, 3) + outputmin; 
}


function EaseInOutElastic(inputvalue,outputmin,outputmax,inputmax) {

var _s = 1.70158;
var _p = 0;
var _a = outputmax;

if (inputvalue == 0 || _a == 0) {
    return outputmin;
}

inputvalue /= inputmax*0.5;

if (inputvalue == 2)
{
    return outputmin+outputmax; 
}

if (_p == 0)
{
    _p = inputmax * (0.3 * 1.5);
}

if (_a < abs(outputmax)) 
{ 
    _a = outputmax; 
    _s = _p * 0.25; 
}
else
{
    _s = _p / (2 * pi) * arcsin (outputmax / _a);
}

if (inputvalue < 1)
{
    return -0.5 * (_a * power(2, 10 * (--inputvalue)) * sin((inputvalue * inputmax - _s) * (2 * pi) / _p)) + outputmin;
}

return _a * power(2, -10 * (--inputvalue)) * sin((inputvalue * inputmax - _s) * (2 * pi) / _p) * 0.5 + outputmax + outputmin;
}

