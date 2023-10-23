path = path_add();
alarm[0] = 1;
hasCheese = false;
escaped = false;
freightend = false;
function find_target() {
	if (freightend == false || instance_number(obj_cheese) < 2) { 
		if (instance_exists(obj_cheese) && hasCheese == false && escaped == false) {
			target_y = instance_nearest(x, y, obj_cheese).y;
			target_x = instance_nearest(x, y, obj_cheese).x;
			//if the cat is near the cheese and the moue is near the cat then go to the other cheese
			var x1 = obj_cat.x;
			var y1 = obj_cat.y;
			var distCatFromCheese = (sqrt(sqr(target_x - x1) + sqr(target_y - y1)));
			if (distance_to_object(obj_cat) < 100 && distCatFromCheese < 200) {
			target_y = instance_furthest(x, y, obj_cheese).y;
			target_x = instance_furthest(x, y, obj_cheese).x;
			freightend = true;
			}
		} else {
			target_y = instance_nearest(x, y, obj_door).y;
			target_x = instance_nearest(x, y, obj_door).x;
		}
	}
}
find_target();

grav = 0.25;
defaultVsp = 1.25;
vsp = defaultVsp;