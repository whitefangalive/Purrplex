// you need to have a frame variable initalized at 0
function followAnimationCurve(curveAsset, curveSpeed, minimum) {
frame += curveSpeed;

var _curveStruct = animcurve_get(curveAsset);
var _channel = animcurve_get_channel(_curveStruct, "x");
var value = minimum * animcurve_channel_evaluate(_channel, frame);
return value;
}