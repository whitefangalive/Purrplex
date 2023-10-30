//Collision horizontal with object Collision
function collide() {
if place_meeting(x+speed_h, y, obj_collision_parent) {
    while !place_meeting(x+sign(speed_h), y, obj_collision_parent) {
        x += sign(speed_h);
    }
    speed_h = 0;
}
x += speed_h;

// Collision vertical with object Collision
if place_meeting(x, y+speed_v, obj_collision_parent) {
    while !place_meeting(x, y+sign(speed_v), obj_collision_parent) {
        y += sign(speed_v);
    }
    speed_v = 0;
}
y += speed_v;
}