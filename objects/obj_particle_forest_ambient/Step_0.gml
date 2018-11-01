/// @description Trigger Particle creation alarm
if(alarm[0] < 0){
	alarm[0] = room_speed/30
}

with (obj_graver)
	if(hurt_frame == 1){
		/*part_particles_create(obj_particle_forest_ambient.particle_emitter, x + random_range(-5,5), y + random_range(-5,5),obj_particle_forest_ambient.impact_particle,1)*/	
	}