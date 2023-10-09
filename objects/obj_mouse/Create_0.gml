path = path_add();
alarm[0] = 1;

function find_target() {
	if (instance_exists(obj_cheese)) {
		target_y = instance_nearest(x, y, obj_cheese).y;
		target_x = instance_nearest(x, y, obj_cheese).x;
	}
}
find_target();