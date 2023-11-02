cheeseYouCannotGetTo = [];


hasCheese = false;
escaped = false;
freightend = false;


ds_gridpathfinding = noone;
path_building = noone;

max_speed = 1;
game_gravity = 1;
acceleration = 0.3;
game_friction = 0.1;
jump_height = -10;
speed_v = 0;
speed_h = 0;

action = 0;
path_point = 0;
jump_action = 0;
currentCheeseTryingToGeTo = -1;
function find_target() {
	if (freightend == false || instance_number(obj_cheese) < 2) { 
		if (instance_exists(obj_cheese) && hasCheese == false && escaped == false) {
			show_debug_message(string(cheeseYouCannotGetTo));
			currentCheeseTryingToGeTo = findNearestNotInList(x, y, obj_cheese, cheeseYouCannotGetTo);
			target_y = currentCheeseTryingToGeTo.y;
			target_x = currentCheeseTryingToGeTo.x;
			//if the cat is near the cheese and the moue is near the cat then go to the other cheese
			var x1 = obj_cat.x;
			var y1 = obj_cat.y;
			var distCatFromCheese = (sqrt(sqr(target_x - x1) + sqr(target_y - y1)));
			if (distance_to_object(obj_cat) < 100 && distCatFromCheese < 200) {
			currentCheeseTryingToGeTo = instance_furthest(x, y, obj_cheese);
			target_y = instance_furthest(x, y, obj_cheese).y;
			target_x = instance_furthest(x, y, obj_cheese).x;
			freightend = true;
			}
		} else {
			currentCheeseTryingToGeTo = findNearestNotInList(x, y, obj_cheese, cheeseYouCannotGetTo);
			target_y = currentCheeseTryingToGeTo.y;
			target_x = currentCheeseTryingToGeTo.x;
		}
	}
}
