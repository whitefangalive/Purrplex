// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buildPath(xgoal, ygoal){
	path_building = path_add();
	var value;
	var x_previous;
	var a = -1;
	var b = -1
	var n = 0;
	
	path_add_point(path_building, xgoal*obj_grid.cell_width + (obj_grid.cell_width/2), ygoal*obj_grid.cell_height + (obj_grid.cell_height/2), 100);
	value = ds_grid_get(ds_gridpathfinding, xgoal, ygoal);
	
	for (var i = value-1; i > 0; --i) {
		x_previous = xgoal;
		n=0;
	}
}