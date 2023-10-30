var distance = obj_game.EaseInOutElastic(frame, 0.9, distancebounce, framesmax[part]);
var distancey = obj_game.EaseInOutElastic(frame, 1, distancebounce, framesmax[part]);
draw_sprite_ext(spr_door, 0,x,y,distance,distancey,0,c_white,1);