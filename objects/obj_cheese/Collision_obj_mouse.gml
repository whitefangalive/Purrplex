var closestMouse = instance_nearest(x, y, obj_mouse);
instance_destroy();
with (closestMouse) {
	hasCheese = true;
	defaultVsp += 0.25;
	gameLose();
}