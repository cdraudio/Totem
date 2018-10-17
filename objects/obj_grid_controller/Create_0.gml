//Create grid map for AI
globalvar grid;
grid = mp_grid_create(16, 16, room_width / 32, room_height /32, 32, 32)

//Make solids forbidden
mp_grid_add_instances(grid, obj_solid, false);
mp_grid_add_instances(grid, obj_solid_medium, false);
mp_grid_add_instances(grid, obj_solid_small, false);
//mp_grid_add_instances(grid, obj_player, false);
mp_grid_add_instances(grid, obj_hole, false)



//Make Enemies Move Towards Player
