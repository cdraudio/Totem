// @description Create Particle Emitter and Particles

// create particle system
part_system = part_system_create()
part_system_depth(part_system,-10);
part_system_position(part_system, 0,0)

// create particle
deepwood_ambient_particle = part_type_create()
part_type_shape(deepwood_ambient_particle,pt_shape_flare)
part_type_scale(deepwood_ambient_particle,1,1)
part_type_size(deepwood_ambient_particle,0.10,0.20,-.001,0)
part_type_color3(deepwood_ambient_particle, 13565768, 16187197, 16763455);
part_type_alpha3(deepwood_ambient_particle,0,1,0)
part_type_speed(deepwood_ambient_particle,0.05,0.1,0,0)
part_type_direction(deepwood_ambient_particle,0,359,0,0)
part_type_orientation(deepwood_ambient_particle,0,359,10,0,true)
part_type_life(deepwood_ambient_particle,200,500)
part_type_blend(deepwood_ambient_particle,true)

//create particle emitter
particle_emitter = part_emitter_create(part_system);
part_emitter_region(part_system, particle_emitter, x-50, x+50, y-50, y+50, ps_shape_ellipse, ps_distr_gaussian)
part_system_depth(part_system,-10);