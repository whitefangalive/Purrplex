





function fillTheGrid(ax, ay, xgoal, ygoal) {
	var path_found;
	var n;
	var a;
	path_found = 0;

	ds_gridpathfinding = ds_grid_create(ds_grid_width(global.ds_grid_pathfinding), ds_grid_height(global.ds_grid_pathfinding));
	ds_grid_copy(ds_gridpathfinding, global.ds_grid_pathfinding);

	var point_list = ds_list_create();
	ds_list_add(point_list, ax);
	ds_list_add(point_list, ay);
	ds_grid_set(ds_gridpathfinding, ax, ay, 0);
	for (var i = 1; i <200; ++i) {
		if (path_found == 1) {
			ds_list_destroy(point_list);
			//ds_grid_destroy(ds_gridpathfinding);
			return path_found;
			break;
		}
		
		var size_list = ds_list_size(point_list);
		
		if (size_list == 0) {
			ds_list_destroy(point_list);
			//ds_grid_destroy(ds_gridpathfinding);
			return path_found;
			break;
		}
		for (var j = 0; j < size_list; ++j) {
			ax = ds_list_find_value(point_list, j);
			ay = ds_list_find_value(point_list, j+1);
		if (ax == xgoal && ay == ygoal) {
			path_found = 1;
			scr_build_the_path(xgoal, ygoal);
			break;
		}
			n = 1;
			if (ay != undefined) {
				/// Check if the enemy can go to the right
				if (ds_grid_get(ds_gridpathfinding, ax+1, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax+1, ay+1) == -2) {
					ds_grid_set(ds_gridpathfinding, ax+1, ay, i);
					ds_list_add(point_list, ax+1);
					ds_list_add(point_list, ay);
				} else { // if the enemy can go to the right, the other movment will be impossible so we put a else to skip all the following code
					//jump vertically right side
					/// Check if we can go jump Two block vertically (right side)
					if (ds_grid_get(ds_gridpathfinding, ax+1, ay) == -2 && ds_grid_get(ds_gridpathfinding, ax+1, ay-1) ==-2 && ds_grid_get(ds_gridpathfinding, ax+1, ay-2) ==-1) {
						ds_grid_set(ds_gridpathfinding, ax+1, ay-2, i);
						ds_list_add(point_list, ax+1);
						ds_list_add(point_list, ay-2);
					}
					/// Check if we can go jump one block vertically (right side)
					if (ds_grid_get(ds_gridpathfinding, ax+1, ay) == -2 && ds_grid_get(ds_gridpathfinding, ax+1, ay-1) ==-1) {
						ds_grid_set(ds_gridpathfinding, ax+1, ay-1, i);
						ds_list_add(point_list, ax+1);
						ds_list_add(point_list, ay-1);
					} else {
						//big jump
						if (ds_grid_get(ds_gridpathfinding, ax+1, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax+2, ay) == -2 && ds_grid_get(ds_gridpathfinding, ax+2, ay-1) ==- 1) {
							ds_grid_set(ds_gridpathfinding, ax+2, ay-1, i);
							ds_list_add(point_list, ax+2);
							ds_list_add(point_list, ay-1);
						}
				
						if (ds_grid_get(ds_gridpathfinding, ax+1, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax+2, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax+2, ay+1)== -2) {
							ds_grid_set(ds_gridpathfinding, ax+2, ay, i);
							ds_list_add(point_list, ax+2);
							ds_list_add(point_list, ay);
						}
				
						if (ds_grid_get(ds_gridpathfinding, ax+1, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax+1, ay+1) == -1) {
							{
								do {
									++n;
									a = ds_grid_get(ds_gridpathfinding, ax+1, ay+n);
								}
							until ((a == -2) || (ay+n == ds_grid_height(ds_gridpathfinding))) }
					
							if (ds_grid_get(ds_gridpathfinding, ax+1, ay+n-1) == -1 && ds_grid_get(ds_gridpathfinding, ax+1, ay+n) == -2) {
								ds_grid_set(ds_gridpathfinding, ax+1, ay+n-1, i)
								ds_list_add(point_list, ax + 1);
								ds_list_add(point_list, ay+n-1);
							}
						}
					}
				}
			}
		
			n = 1;
			if (ay != undefined) {
				/// Check if the enemy can go to the left
				if (ds_grid_get(ds_gridpathfinding, ax-1, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax-1, ay+1) == -2) {
					ds_grid_set(ds_gridpathfinding, ax-1, ay, i);
					ds_list_add(point_list, ax-1);
					ds_list_add(point_list, ay);
				} else {
					/// Check if we can go jump Two block vertically (right side)
					if (ds_grid_get(ds_gridpathfinding, ax-1, ay) == -2 && ds_grid_get(ds_gridpathfinding, ax-1, ay-1) ==-2 && ds_grid_get(ds_gridpathfinding, ax-1, ay-2) ==-1) {
						ds_grid_set(ds_gridpathfinding, ax-1, ay-2, i);
						ds_list_add(point_list, ax-1);
						ds_list_add(point_list, ay-2);
					}
					/// Check if we can go jump one block vertically (left side)
						if (ds_grid_get(ds_gridpathfinding, ax-1, ay) == -2 && ds_grid_get(ds_gridpathfinding, ax-1, ay-1) == -1) {
						ds_grid_set(ds_gridpathfinding, ax-1, ay-1, i);
						ds_list_add(point_list, ax-1);
						ds_list_add(point_list, ay-1);
					} else {
						if (ds_grid_get(ds_gridpathfinding, ax-1, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax+2, ay) == -2 && ds_grid_get(ds_gridpathfinding, ax-2, ay -1 == -1)) {
							ds_grid_set(ds_gridpathfinding, ax-2, ay-1, i);
							ds_list_add(point_list, ax-2);
							ds_list_add(point_list, ay-1);
						}
						if (ds_grid_get(ds_gridpathfinding, ax-1, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax+2, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax-2, ay +1 == -2)) {
							ds_grid_set(ds_gridpathfinding, ax-2, ay, i);
							ds_list_add(point_list, ax-2);
							ds_list_add(point_list, ay);
						} 
				
						if (ds_grid_get(ds_gridpathfinding, ax-1, ay) == -1 && ds_grid_get(ds_gridpathfinding, ax-1, ay+1) == -1) {
							{
								do {
									++n;
									a = ds_grid_get(ds_gridpathfinding, ax-1, ay+n);
								}
							until ((a == -2) || (ay+n == ds_grid_height(ds_gridpathfinding))) }
					
							if (ds_grid_get(ds_gridpathfinding, ax-1, ay+n-1) == -1 && ds_grid_get(ds_gridpathfinding, ax-1, ay+n) == -2) {
								ds_grid_set(ds_gridpathfinding, ax-1, ay+n-1, i)
								ds_list_add(point_list, ax - 1);
								ds_list_add(point_list, ay+n-1);
							}
						}
					}
				}
			}
		}
		
		for (var k = 0; k < size_list; ++k) {
			ds_list_delete(point_list, 0);
		}
	}
}
