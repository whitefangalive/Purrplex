if (instance_exists(obj_cat)) {
	var colliderHeight = 33;
	var bottomOfCat = obj_cat.y + colliderHeight;
	if (bottomOfCat < y) {
		instance_activate_object(collider);
	} else {
		instance_deactivate_object(collider);
	}
}