// @description Create Particle Emitter and Particles

// create particle system
part_system = part_system_create()
part_system_depth(part_system,-5);
part_system_position(part_system, 0,0)

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
part_type_color3(tomahawk_trail, 16776060, 15138618, 16774797);
part_type_alpha3(tomahawk_trail, 1, 0.5, 0);
part_type_blend(tomahawk_trail, 0);
part_type_life(tomahawk_trail, 10,25);
part_type_speed(tomahawk_trail, 0.1, 0.5, 0.1, 0);
part_type_direction(tomahawk_trail, 50, 135, 0, 0);
part_type_gravity(tomahawk_trail, 0, 0);

//create particle emitter
particle_emitter = part_emitter_create(part_system);
part_emitter_region(part_system, particle_emitter, 0, view_xport[0], 0, view_yport[0], ps_shape_rectangle, ps_distr_invgaussian)
part_system_depth(part_system,6);