// @description Create Particle Emitter and Particles

// create particle system
part_system = part_system_create()
part_system_depth(part_system,-5);
part_system_position(part_system, 0,0)

// create particle
first_particle = part_type_create()
part_type_shape(first_particle,pt_shape_flare)
part_type_scale(first_particle,1,1)
part_type_size(first_particle,0.10,0.20,-.001,0)
part_type_color3(first_particle, 13565768, 16187197, 16763455);
part_type_alpha3(first_particle,0,1,0)
part_type_speed(first_particle,0.05,0.1,0,0)
part_type_direction(first_particle,0,359,0,0)
part_type_orientation(first_particle,0,359,10,0,true)
part_type_life(first_particle,125,325)
part_type_blend(first_particle,true)

//create particle emitter
particle_emitter = part_emitter_create(part_system);
part_emitter_region(part_system, particle_emitter, x-1000, x+1000, y-1000, y+1000, ps_shape_rectangle, ps_distr_invgaussian)
part_system_depth(part_system,6);