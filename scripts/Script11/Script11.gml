
/*
* TERMS OF USE - EASING EQUATIONS
* Open source under the BSD License.
* Copyright (c)2001 Robert Penner
* All rights reserved.
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the name of the author nor the names of contributors may be used to endorse or promote products derived from this software without specific prior written permission.
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/*
    It is advised to add custom easing algorithms independent of Default_Ease_Algorithms
*/

/*
For visual graphs use: http://easings.net/
*/




//function EaseOutCubic
//EaseOutCubic(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax * (power(inputvalue/inputmax - 1, 3) + 1) + outputmin; }

//function EaseInOutCubic
//EaseInOutCubic(inputvalue,outputmin,outputmax,inputmax) {

//inputvalue /= inputmax * 0.5;

//if (inputvalue < 1)
//{
//   return outputmax * 0.5 * power(inputvalue, 3) + outputmin; }
//}

//return outputmax * 0.5 * (power(inputvalue - 2, 3) + 2) + outputmin; }

//function EaseInQuart
//EaseInQuart(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax * power(inputvalue / inputmax, 4) + outputmin; }

//function EaseOutQuart
//EaseOutQuart(inputvalue,outputmin,outputmax,inputmax) {

//return -outputmax * (power(inputvalue / inputmax - 1, 4) - 1) + outputmin; }

//function EaseInOutQuart
//EaseInOutQuart(inputvalue,outputmin,outputmax,inputmax) {

//inputvalue /= inputmax * 0.5;

//if (inputvalue < 1) 
//{
//    return outputmax * 0.5 * power(inputvalue, 4) + outputmin; }
//}

//return outputmax * -0.5 * (power(inputvalue - 2, 4) - 2) + outputmin; }

//function EaseInQuint
//EaseInQuint(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax * power(inputvalue / inputmax, 5) + outputmin; }

//function EaseOutQuint
//EaseOutQuint(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax * (power(inputvalue / inputmax - 1, 5) + 1) + outputmin; }

//function EaseInOutQuint
//EaseInOutQuint(inputvalue,outputmin,outputmax,inputmax) {

//inputvalue /= inputmax * 0.5;

//if (inputvalue < 1)
//{
//    return outputmax * 0.5 * power(inputvalue, 5) + outputmin;
//}

//return outputmax * 0.5 * (power(inputvalue - 2, 5) + 2) + outputmin; }

//function EaseInSine
//EaseInSine(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax * (1 - cos(inputvalue / inputmax * (pi / 2))) + outputmin; }

//function EaseOutSine
//EaseOutSine(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax * sin(inputvalue / inputmax * (pi / 2)) + outputmin; }

//function EaseInOutSine
// EaseInOutSine(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax * 0.5 * (1 - cos(pi * inputvalue / inputmax)) + outputmin; }

//function EaseInCirc
//EaseInCirc(inputvalue,outputmin,outputmax,inputmax) {

//inputvalue /= inputmax;
//return outputmax * (1 - sqrt(1 - inputvalue * inputvalue)) + outputmin; }

//function EaseOutCirc
//EaseOutCirc(inputvalue,outputmin,outputmax,inputmax) {

//inputvalue = inputvalue / inputmax - 1;
//return outputmax * sqrt(1 - inputvalue * inputvalue) + outputmin; }

//function EaseInOutCirc(inputvalue,outputmin,outputmax,inputmax) {

//inputvalue /= inputmax * 0.5;

//if (inputvalue < 1)
//{
//    return outputmax * 0.5 * (1 - sqrt(1 - inputvalue * inputvalue)) + outputmin;
//}


//inputvalue -= 2;
//return outputmax * 0.5 * (sqrt(1 - inputvalue * inputvalue) + 1) + outputmin; }

//function EaseInExpo
//EaseInExpo(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax * power(2, 10 * (inputvalue / inputmax - 1)) + outputmin; }

//function EaseOutExpo
//EaseOutExpo(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax * (-power(2, -10 * inputvalue / inputmax) + 1) + outputmin; }

//function EaseInOutExpo
//EaseInOutExpo(inputvalue,outputmin,outputmax,inputmax) {

//inputvalue /= inputmax * 0.5;

//if (inputvalue < 1) 
//{
//    return outputmax * 0.5 * power(2, 10 * --inputvalue) + outputmin; }
//}

//return outputmax * 0.5 * (-power(2, -10 * --inputvalue) + 2) + outputmin; }

//function EaseInElastic
//EaseInElastic(inputvalue,outputmin,outputmax,inputmax) {

//var _s = 1.70158;
//var _p = 0;
//var _a = outputmax;

//if (inputvalue == 0 || _a == 0) 
//{
//    return outputmin; 
//}

//inputvalue /= inputmax;

//if (inputvalue == 1) 
//{
//    return outputmin+outputmax; 
//}

//if (_p == 0) 
//{
//    _p = inputmax*0.3;
//}

//if (_a < abs(outputmax)) 
//{ 
//    _a = outputmax; 
//    _s = _p*0.25; 
//}
//else
//{
//    _s = _p / (2 * pi) * arcsin (outputmax / _a);
//}

//return -(_a * power(2,10 * (--inputvalue)) * sin((inputvalue * inputmax - _s) * (2 * pi) / _p)) + outputmin; }

//function EaseOutElastic
//EaseOutElastic(inputvalue,outputmin,outputmax,inputmax) {

//var _s = 1.70158;
//var _p = 0;
//var _a = outputmax;

//if (inputvalue == 0 || _a == 0)
//{
//    return outputmin;
//}

//inputvalue /= inputmax;

//if (inputvalue == 1)
//{
//    return outputmin + outputmax;
//}

//if (_p == 0)
//{
//    _p = inputmax * 0.3;
//}

//if (_a < abs(outputmax)) 
//{ 
//    _a = outputmax;
//    _s = _p * 0.25; 
//}
//else 
//{
//    _s = _p / (2 * pi) * arcsin (outputmax / _a);
//}

//return _a * power(2, -10 * inputvalue) * sin((inputvalue * inputmax - _s) * (2 * pi) / _p ) + outputmax + outputmin;


//function EaseInBack
//EaseInBack(inputvalue,outputmin,outputmax,inputmax) {

//var _s = 1.70158;

//inputvalue /= inputmax;
//return outputmax * inputvalue * inputvalue * ((_s + 1) * inputvalue - _s) + outputmin; }

//function EaseOutBack
//EaseOutBack(inputvalue,outputmin,outputmax,inputmax) {

//var _s = 1.70158;

//inputvalue = inputvalue/inputmax - 1;
//return outputmax * (inputvalue * inputvalue * ((_s + 1) * inputvalue + _s) + 1) + outputmin; }

//function EaseInOutBack
//EaseInOutBack(inputvalue,outputmin,outputmax,inputmax) {

//var _s = 1.70158;

//inputvalue = inputvalue/inputmax*2

//if (inputvalue < 1)
//{
//    _s *= 1.525;
//    return outputmax * 0.5 * (inputvalue * inputvalue * ((_s + 1) * inputvalue - _s)) + outputmin; }
//}

//inputvalue -= 2;
//_s *= 1.525

//return outputmax * 0.5 * (inputvalue * inputvalue * ((_s + 1) * inputvalue + _s) + 2) + outputmin; }

//function EaseInBounce
//EaseInBounce(inputvalue,outputmin,outputmax,inputmax) {

//return outputmax - EaseOutBounce(inputmax - inputvalue, 0, outputmax, inputmax) + outputmin

//function EaseOutBounce
//EaseOutBounce(inputvalue,outputmin,outputmax,inputmax) {

//inputvalue /= inputmax;

//if (inputvalue < 1/2.75)
//{
//    return outputmax * 7.5625 * inputvalue * inputvalue + outputmin;
//}
//else
//if (inputvalue < 2/2.75)
//{
//    inputvalue -= 1.5/2.75;
//    return outputmax * (7.5625 * inputvalue * inputvalue + 0.75) + outputmin; }
//}
//else
//if (inputvalue < 2.5/2.75)
//{
//    inputvalue -= 2.25/2.75;
//    return outputmax * (7.5625 * inputvalue * inputvalue + 0.9375) + outputmin; }
//}
//else
//{
//    inputvalue -= 2.625/2.75;
//    return outputmax * (7.5625 * inputvalue * inputvalue + 0.984375) + outputmin; }
//}


//function EaseInOutBounce
//EaseInOutBounce(inputvalue,outputmin,outputmax,inputmax) {

//if (inputvalue < inputmax*0.5) 
//{
//    return (EaseInBounce(inputvalue*2, 0, outputmax, inputmax)*0.5 + outputmin);
//}

//return (EaseOutBounce(inputvalue*2 - inputmax, 0, outputmax, inputmax)*0.5 + outputmax*0.5 + outputmin);
