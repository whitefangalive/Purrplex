depth = -3000;

grid = mp_grid_create(0, 0, room_width/16, room_height/16, 16, 16);

mp_grid_add_instances(grid, obj_collision_parent, 0);
mp_grid_add_instances(grid, obj_unable_to_mouse, 0);