// @description Create Particle Emitter and Particles

// create particle system
part_system = part_system_create()
part_system_depth(part_system,-5);
part_system_position(part_system, 0,0)

global.pe_GreenSpark1 = part_emitter_create(part_system);
global.pe_Slice = part_emitter_create(part_system);
global.pe_Blu_R = part_emitter_create(part_system);

//Green_Spark
global.pt_GreenSpark1 = part_type_create();
part_type_shape(global.pt_GreenSpark1, pt_shape_pixel);
part_type_sprite(global.pt_GreenSpark1, spr_green_spark, 1, 1, 0);
part_type_size(global.pt_GreenSpark1, 1, 1.50, 0, 0);
part_type_scale(global.pt_GreenSpark1, 1, 1);
part_type_orientation(global.pt_GreenSpark1, -51, 33, 0, 0, 0);
part_type_color3(global.pt_GreenSpark1, 16777215, 8454143, 15312812);
part_type_alpha3(global.pt_GreenSpark1, 1, 1, 0.62);
part_type_blend(global.pt_GreenSpark1, 0);
part_type_life(global.pt_GreenSpark1, 20, 65);
part_type_speed(global.pt_GreenSpark1, 12, 18, -3, 0.01);
part_type_direction(global.pt_GreenSpark1, -24, 49, 0, 0);
part_type_gravity(global.pt_GreenSpark1, 0.10, 65);

//Slice
global.pt_Slice = part_type_create();
part_type_shape(global.pt_Slice, pt_shape_line);
part_type_sprite(global.pt_Slice, spr_white_slice, 1, 1, 0);
part_type_size(global.pt_Slice, 1, 1, 0.10, 0);
part_type_scale(global.pt_Slice, 2, 1);
part_type_orientation(global.pt_Slice, -9, 4, 0, 0, 0);
part_type_color3(global.pt_Slice, 16777215, 16777215, 12615935);
part_type_alpha3(global.pt_Slice, 1, 0.64, 0);
part_type_blend(global.pt_Slice, 1);
part_type_life(global.pt_Slice, 13, 13);
part_type_speed(global.pt_Slice, 1, 1, 0, 0);
part_type_direction(global.pt_Slice, -6, 5, 0, 0);
part_type_gravity(global.pt_Slice, 0, 0);

//Blu_R
global.pt_Blu_R = part_type_create();
part_type_shape(global.pt_Blu_R, pt_shape_pixel);
part_type_sprite(global.pt_Blu_R, spr_blue_cloud, 1, 1, 0);
part_type_size(global.pt_Blu_R, 1, 2, 0, 0);
part_type_scale(global.pt_Blu_R, 1, 1);
part_type_orientation(global.pt_Blu_R, -7, 16, 0, 0, 0);
part_type_color3(global.pt_Blu_R, 16777215, 16777215, 16777215);
part_type_alpha3(global.pt_Blu_R, 1, 0.76, 0.19);
part_type_blend(global.pt_Blu_R, 0);
part_type_life(global.pt_Blu_R, 40, 70);
part_type_speed(global.pt_Blu_R, 0.05, 0.10, 0, 0);
part_type_direction(global.pt_Blu_R, 0, 94, 0, 0);
part_type_gravity(global.pt_Blu_R, 0, 73);
// Ambient blue particle of Deepwood
deepwood_ambient_particle = part_type_create()
part_type_shape(deepwood_ambient_particle,pt_shape_flare)
part_type_scale(deepwood_ambient_particle,1,1)
part_type_size(deepwood_ambient_particle,0.10,0.20,-.001,0)
part_type_color3(deepwood_ambient_particle, 13565768, 16187197, 16763455);
part_type_alpha3(deepwood_ambient_particle,0,1,0)
part_type_speed(deepwood_ambient_particle,0.05,0.1,0,0)
part_type_direction(deepwood_ambient_particle,0,359,0,0)
part_type_orientation(deepwood_ambient_particle,0,359,10,0,true)
part_type_life(deepwood_ambient_particle,125,325)
part_type_blend(deepwood_ambient_particle,true)

// Particle for tomahawk impact
impact_particle = part_type_create();
part_type_shape(impact_particle, pt_shape_flare);
part_type_size(impact_particle, 0.2, 0.3, 0, 0);
part_type_scale(impact_particle, 1, 1);
part_type_orientation(impact_particle, 0, 0, 0, 0, 0);
part_type_color3(impact_particle, 16776060, 15138618, 16774797);
part_type_alpha3(impact_particle, 0.5, 1, 0);
part_type_blend(impact_particle, 0);
part_type_life(impact_particle, 10,30);
part_type_speed(impact_particle, 1, 1.5, 0.05, 0);
part_type_direction(impact_particle, -228, 130, 0, 0);
part_type_gravity(impact_particle, 0, 0);

// Particle for tomahawk trail
tomahawk_trail = part_type_create();
part_type_shape(tomahawk_trail, pt_shape_flare);
part_type_size(tomahawk_trail, 0.2, 0.25, 0, 0);
part_type_scale(tomahawk_trail, 1, 1);
part_type_orientation(tomahawk_trail, 0, 0, 0, 0, 0);
part_type_color2(tomahawk_trail,make_color_rgb(97,233,36), make_color_rgb(66,209,145));
part_type_alpha3(tomahawk_trail, 1, 0.5, 0);
part_type_blend(tomahawk_trail, 0);
part_type_life(tomahawk_trail, 10,25);
part_type_speed(tomahawk_trail, 0.1, 0.5, 0.1, 0);
part_type_direction(tomahawk_trail, 50, 135, 0, 0);
part_type_gravity(tomahawk_trail, 0, 0);

//Particle for player running
player_run = part_type_create();
part_type_shape(player_run, pt_shape_disk);
part_type_size(player_run, 0.005, 0.01, random_range(0.002, 0.003), 0);
part_type_scale(player_run, 1, 1);
part_type_orientation(player_run, 0, 0, 0, 0, 0);
part_type_color3(player_run, c_white, c_white, c_white);
part_type_alpha3(player_run, 1, 0.5, 0);
part_type_blend(player_run, 0);
part_type_life(player_run, 10,25)
part_type_speed(player_run, 0.005, 0.01, 0, 0);
part_type_direction(player_run, -228, 130, 0, 0);
part_type_gravity(player_run, 0, 0);

//create particle emitter
particle_emitter = part_emitter_create(part_system);
part_emitter_region(part_system, particle_emitter, 0, view_xport[0], 0, view_yport[0], ps_shape_rectangle, ps_distr_invgaussian)
part_system_depth(part_system,6);