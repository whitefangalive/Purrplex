
var hcells = ceil(room_width/cell_width);
var vcells = ceil(room_height/cell_height);

global.ds_grid_pathfinding = ds_grid_create(hcells, vcells);
	for (var i = 0 ; i < hcells; ++i) {
		for (var j = 0; j < vcells; ++j) {
			if place_meeting(i*cell_width, j*cell_height, obj_collision_parent) {
				ds_grid_add(global.ds_grid_pathfinding, i, j, -2);
			} else {
				ds_grid_add(global.ds_grid_pathfinding, i, j, -1);
			}
		}
	}