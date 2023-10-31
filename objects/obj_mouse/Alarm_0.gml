
//path_delete(path);
//path = path_add();
find_target();

	speed_h = 0;
     speed_v = 0;
     if path_exists(path_building) {
         path_delete (path_building);
     }
     path_point = 0 ;
     action = 0 ;
     jump_action = 0 ;

	scr_fillGrid(floor(x/obj_grid.cell_width), floor(y/obj_grid.cell_height), floor(target_x/obj_grid.cell_width), floor(target_y/obj_grid.cell_height));

////mp_grid_path(obj_setup_pathway.grid, path, x, y, target_x, target_y, false);

//path_start(path, 0.5, path_action_stop, true);

//alarm_set(0, 120);


