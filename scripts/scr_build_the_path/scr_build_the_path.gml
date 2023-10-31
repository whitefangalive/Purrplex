// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_build_the_path(xgoal, ygoal){
 /// Y coordinate where we want to go
path_building = path_add(); /// Create a path where we will add all the points
var value;   /// Value in the enemy grid
var x_previous ; /// Coordinate of X previous
var a = -1 ;  /// Use when enemy falls. We will store data from grid_pathfinding
var b = -1 ;  /// Use when enemy falls. We will store data from grid_pathfinding
var n = 0 ;  /// Use when enemy falls.
function addPoint(xgoal, ygoal) {
	var path_length = path_get_number(path_building) - 1;
	var pathPointY = path_get_point_x(path_building, path_length);
	var xgoaltimesGrid = xgoal*obj_grid.cell_width + (obj_grid.cell_width/2);
	if (pathPointY != xgoaltimesGrid && path_get_point_y(path_building, path_get_number(path_building)) != ygoal*obj_grid.cell_height +(obj_grid.cell_height/20)) {
		path_add_point(path_building, xgoal*obj_grid.cell_width + (obj_grid.cell_width/2), ygoal*obj_grid.cell_height +(obj_grid.cell_height/2), 100);
		show_debug_message(string(xgoal*obj_grid.cell_width + (obj_grid.cell_width/2)) + ", " + string(ygoal*obj_grid.cell_height +(obj_grid.cell_height/2), 100))
	}
}

addPoint(xgoal, ygoal); /// Initialize the first point of the path

value = ds_grid_get(ds_gridpathfinding,xgoal,ygoal) ; /// Value in grid pathfinding of the goal position

for (var i = value-1; i > 0 ; i -= 1)
{
    x_previous=xgoal ;  // We put in x previous the variable xgoal.
    n=0;
	
		show_debug_message(string(xgoal-1) + " " + string(ygoal) + " " + string(xgoal+1) + " " + string(ygoal+1) + " " + ", " + string(i) + " = " + string((ds_grid_value_exists(ds_gridpathfinding, xgoal-1,ygoal, xgoal+1,ygoal+1, i))))
        if (ds_grid_value_exists(ds_gridpathfinding, xgoal-1,ygoal, xgoal+1,ygoal+1, i))  /// Check if left / right, jump 1 block vertically left right
           {
           xgoal = ds_grid_value_x(ds_gridpathfinding, xgoal-1,ygoal, xgoal+1,ygoal+1,i);  // Store the X coordinate in xgoal
           ygoal = ds_grid_value_y(ds_gridpathfinding, x_previous-1,ygoal, x_previous+1,ygoal+1,i); // Store the Y coordinate in ygoal
           addPoint(xgoal, ygoal); // Add point in path
		   
           } else if ds_grid_value_exists(ds_gridpathfinding, xgoal-1,ygoal, xgoal+1,ygoal+2, i) {  /// Check if left / right, jump 2 block vertically left right 
		xgoal = ds_grid_value_x(ds_gridpathfinding, xgoal-1,ygoal, xgoal+1,ygoal+2,i);  // Store the X coordinate in xgoal
		ygoal = ds_grid_value_y(ds_gridpathfinding, x_previous-1,ygoal, x_previous+1,ygoal+2,i); // Store the Y coordinate in ygoal
		addPoint(xgoal, ygoal); // Add point in path
		
	}
                else   
                {
                    if ds_grid_value_exists(ds_gridpathfinding, xgoal-3,ygoal, xgoal+3,ygoal+1, i) /// Check if diagonal jump (big jump) or Horizontal jump (jump over a void)
                    {
                    xgoal = ds_grid_value_x(ds_gridpathfinding, xgoal-3,ygoal, xgoal+3,ygoal+1,i);
                        if ds_grid_get (ds_gridpathfinding, x_previous + sign(xgoal-x_previous), ygoal) == -1 /// Check if enemy could really jump
                        {
                        ygoal = ds_grid_value_y(ds_gridpathfinding, x_previous-3,ygoal, x_previous+3,ygoal+1,i);
                        addPoint(xgoal, ygoal);
						
                        }
                            else {      /// Case where he find a O_Collsiion, means that we cannot reach it. Means that we have to fall.
                                    {
                                    do
                                       {
                                       n=n+1 ;
                                       a= ds_grid_get(ds_gridpathfinding,x_previous-1,ygoal-n);
                                       b= ds_grid_get(ds_gridpathfinding,x_previous+1,ygoal-n);
                                       }
                                    until (a==i) || (b==i) || ((ygoal-n) < 0)
                                    }
                                            if ds_grid_value_exists(ds_gridpathfinding, x_previous-1,ygoal-n, x_previous+1,ygoal-n, i)
                                            {
                                               xgoal = ds_grid_value_x(ds_gridpathfinding, x_previous-1,ygoal-n, x_previous+1,ygoal,i);
                                               ygoal = ds_grid_value_y(ds_gridpathfinding, x_previous-1,ygoal-n, x_previous+1,ygoal,i);
                                               addPoint(xgoal, ygoal);
											   
                                            }
                                }
                    }
                                    else{  /// When enemy fall
                                            {
                                            do
                                               {
                                               n=n+1 ;
                                               a= ds_grid_get(ds_gridpathfinding,x_previous-1,ygoal-n);
                                               b= ds_grid_get(ds_gridpathfinding,x_previous+1,ygoal-n);
                                               }
                                                until (a==i) || (b==i) || ((ygoal-n) < 0)
                                            }
                                                if ds_grid_value_exists(ds_gridpathfinding, x_previous-1,ygoal-n, x_previous+1,ygoal-n, i)
                                                {
                                                   xgoal = ds_grid_value_x(ds_gridpathfinding, x_previous-1,ygoal-n, x_previous+1,ygoal,i);
                                                   ygoal = ds_grid_value_y(ds_gridpathfinding, x_previous-1,ygoal-n, x_previous+1,ygoal,i);
                                                   addPoint(xgoal, ygoal);
												   
                                                }

                                        }
                }
}


path_add_point(path_building, floor(x/obj_grid.cell_width)*obj_grid.cell_width+(obj_grid.cell_width/2),floor(y/obj_grid.cell_height)*obj_grid.cell_height+(obj_grid.cell_height/2), 100);  /// We add the last point which is the point where there is the enemy.
show_debug_message(string(floor(x/obj_grid.cell_width)*obj_grid.cell_width+(obj_grid.cell_width/2)) + ", " + string(floor(y/obj_grid.cell_height)*obj_grid.cell_height+(obj_grid.cell_height/2)));
path_set_closed (path_building,0); /// We didn't close the path because it is an open path. We don't to have loop in this path.
path_reverse (path_building);  // We reverse the path because we start from the end.
}