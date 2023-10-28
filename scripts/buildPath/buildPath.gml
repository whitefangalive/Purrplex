// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buildPath(xgoal, ygoal){
	path_building = path_add();
	var value;
	var x_previous;
	var a = -1;
	var b = -1
	var n = 0;
	
	#macro addPoint path_add_point(path_building, xgoal*obj_grid.cell_width + (obj_grid.cell_width/2), ygoal*obj_grid.cell_height + (obj_grid.cell_height/2), 100);
	addPoint;
	value = ds_grid_get(ds_gridpathfinding, xgoal, ygoal);
	
	for (var i = value-1; i > 0; --i) {
		x_previous = xgoal;
		n=0;
		
		if (ds_grid_value_exists(ds_gridpathfinding, xgoal-1, ygoal, xgoal+1, ygoal+1, i)) {
			xgoal = ds_grid_value_x(ds_gridpathfinding, xgoal-1, ygoal, xgoal+1, ygoal+1, i);
			ygoal = ds_grid_value_y(ds_gridpathfinding, x_previous-1, ygoal, x_previous+1, ygoal+1, i);
			addPoint;
		} else {
			if (ds_grid_value_exists(ds_gridpathfinding, xgoal-2, ygoal, xgoal+2, ygoal+1, i)) {
				xgoal = ds_grid_value_x(ds_gridpathfinding, xgoal-2, ygoal, xgoal+2, ygoal+1, i);
				if (ds_grid_get(ds_gridpathfinding, x_previous + sign(xgoal - x_previous), ygoal) == -1) {
					ygoal = ds_grid_value_y(ds_gridpathfinding, x_previous-2, ygoal, x_previous+2, ygoal+1, i)
					addPoint;
				} else {
					{
						do {
							++n;
							a = ds_grid_get(ds_gridpathfinding, x_previous - 1, ygoal - n);
							b = ds_grid_get(ds_gridpathfinding, x_previous - 1, ygoal - n)
						}
					until ((a == i) || (b == i) || (ygoal - n) < 0) }
					if (ds_grid_value_exists(ds_gridpathfinding, x_previous-1, ygoal-n, x_previous+1, ygoal, i)) {
						xgoal = ds_grid_value_x(ds_gridpathfinding, x_previous-1, ygoal-n, x_previous+1, ygoal, i);
						ygoal = ds_grid_value_y(ds_gridpathfinding, x_previous-1, ygoal-n, x_previous+1, ygoal, i);
						addPoint;
					}
				}
			} else {
				{
				do {
						++n;
						a = ds_grid_get(ds_gridpathfinding, x_previous - 1, ygoal - n);
						b = ds_grid_get(ds_gridpathfinding, x_previous - 1, ygoal - n)
					}
				until ((a == i) || (b == i) || (ygoal - n) < 0) }
				if (ds_grid_value_exists(ds_gridpathfinding, x_previous - 1, ygoal - n, x_previous + 1, ygoal, i)) {
					xgoal = ds_grid_value_x(ds_gridpathfinding, x_previous-1, ygoal-n, x_previous+1, ygoal, i);
					ygoal = ds_grid_value_y(ds_gridpathfinding, x_previous-1, ygoal-n, x_previous+1, ygoal, i);
					addPoint;
				}
			}
		}
	}
	
	addPoint;
	path_set_closed(path_building, 0);
	path_reverse(path_building);
}