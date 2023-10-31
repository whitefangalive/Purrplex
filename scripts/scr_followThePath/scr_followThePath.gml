// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_followThePath(path){
var number_of_points = path_get_number(path);
var path_direction ;



path_direction = sign(path_get_point_x(path, path_point+1)-path_get_point_x(path, path_point)) ;

if action == 0
{
    /// Check if the next point is to move left or right
	var pathPointY = path_get_point_y(path, path_point);
	var pathPointY1 = path_get_point_y(path, path_point+1);
	
	var pathPointX = path_get_point_x(path, path_point);
	var pathPointX1 = path_get_point_x(path, path_point+1);
    if (pathPointY == pathPointY1 && pathPointX + obj_grid.cell_width*path_direction == pathPointX1)
    {
    speed_h = max_speed * path_direction ;
    action = 1;
    }
     else {
            /// Check if the next point is horizontal jump / jump over a void.
            if path_get_point_y(path, path_point) == path_get_point_y(path, path_point+1) && path_get_point_x(path, path_point) + 2*obj_grid.cell_width*path_direction == path_get_point_x(path, path_point+1)
            {
            speed_h = max_speed * path_direction ;
            speed_v = jump_height *0.9 ;
            action = 1;
            } else {
				if path_get_point_y(path, path_point) == path_get_point_y(path, path_point+1) && path_get_point_x(path, path_point) + 3*obj_grid.cell_width*path_direction == path_get_point_x(path, path_point+1)
            {
            speed_h = max_speed * path_direction ;
            speed_v = jump_height *1.8 ;
            action = 1;
            }
                else {
                    /// Check if the next point is to fall
                    if path_get_point_y(path, path_point) < path_get_point_y(path, path_point+1)
                    {
                    speed_h = max_speed * path_direction ;
                        if x <= path_get_point_x(path, path_point+1) && path_get_point_x(path, path_point+1) <(x + speed_h*path_direction)
                        {
                        action = 1 ;
                        speed_h = 0 ;
                        x = path_get_point_x(path, path_point+1);
                        }
                    }
                        else {
                                /// Check if the next point is a diagonal jum /big jump
                                if path_get_point_x(path, path_point) == path_get_point_x(path, path_point+1)-obj_grid.cell_width*2*path_direction && path_get_point_y(path, path_point) == path_get_point_y(path, path_point+1)+obj_grid.cell_height
                                {
                                speed_h = max_speed * path_direction * 0.625 ;
                                speed_v = jump_height * 1.1 ;
                                action = 1;
                                }
                                    else {
										/// Check if the next point is a jump Two block vertically
                                            if path_get_point_y(path, path_point) == path_get_point_y(path, path_point+1)+obj_grid.cell_height*2 && path_get_point_x(path, path_point) + obj_grid.cell_width*path_direction == path_get_point_x(path, path_point+1) {
												speed_h = max_speed * path_direction / 2;
                                                if (place_meeting(x, y+2, obj_collision_parent) && jump_action == 0) {
	                                                speed_v = 1.5 * (jump_height * 0.9) ;
	                                                jump_action = 1 ;
	                                                speed_h = max_speed * path_direction ;
                                                }
											}
                                            /// Check if the next point is a jump one block vertically
                                            if path_get_point_y(path, path_point) == path_get_point_y(path, path_point+1)+obj_grid.cell_height && path_get_point_x(path, path_point) + obj_grid.cell_width*path_direction == path_get_point_x(path, path_point+1)
                                            {
                                            speed_h = max_speed * path_direction / 2;
                                                if place_meeting(x, y+1, obj_collision_parent) && jump_action == 0
                                                {
                                                speed_v = jump_height * 0.9 ;
                                                jump_action = 1 ;
                                                speed_h = max_speed * path_direction ;
                                                }
                                }
                            }
                        }
                    }
			}
        }
}

/// Check if enemy reached the next 
var nextX = path_get_point_x(path, path_point+1);
var nextY = path_get_point_y(path, path_point+1);
var off = y - 7 - sprite_yoffset - (obj_grid.cell_height/2 - sprite_height);
if x <= nextX && nextX <= x + speed_h*path_direction && nextY == off
    {
    path_point = path_point + 1 ;
    action = 0 ;
    jump_action = 0 ;
        if path_point == number_of_points -1  /// Check if it is the last point of the path
            {
            speed_h = 0;
            speed_v = 0;
            path_delete (path);
            path_point = 0 ;
            }
    }
}