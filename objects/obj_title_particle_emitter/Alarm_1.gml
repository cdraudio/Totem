/// @description Create Player Run Particle
with(obj_player)
	if(facing == 0){
		//front
		part_particles_create(obj_particle_forest_ambient.particle_emitter, x + random_range(-3,3), (y + 20) + random_range(-3,3),obj_particle_forest_ambient.player_run,3)
	} else if(facing == 1) {
		//back
		part_particles_create(obj_particle_forest_ambient.particle_emitter, x + random_range(-3,3), (y + 20) + random_range(-3,3),obj_particle_forest_ambient.player_run,3)
	} else {
		//side
		if(image_xscale == 1){
			part_particles_create(obj_particle_forest_ambient.particle_emitter, (x - 16) + random_range(-3,3), (y + 20) + random_range(-3,3),obj_particle_forest_ambient.player_run,3)
		} else {
			part_particles_create(obj_particle_forest_ambient.particle_emitter, (x + 16) + random_range(-3,3), (y + 20) + random_range(-3,3),obj_particle_forest_ambient.player_run,3)
		}
	}