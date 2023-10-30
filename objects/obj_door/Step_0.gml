if (instance_number(obj_mouse) <= 0) {
	open = true;
}

if (open == true) {
	image_index = 1;
	if (distance_to_object(obj_player_parent) < 2) {
		room_goto_next();
	}
}

frame++

if (frame >= framesmax[part]) { // this part of the animation has finished move onto the next one
    part++
    frame = 0
    
    if (part >= array_length(framesmax)) { // the whole animation has finished so reset the whole thing
        part = 1
    }
}