// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function followThePath(path){
	var numberOfPoints = path_get_number(path);
	var path_direction;
	
	if (action == 0) {
		if (path_get_point_y(path, path_point) == path_get_point_y(path, path_point+1) && path_get_point_x(path, path_point) + obj_grid.cell_width*path_direction == path_get_point_x(path, path_point+1)) {
			
		}
	}
	
}