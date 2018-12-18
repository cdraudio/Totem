/// @description Trigger Particle creation alarm
if(alarm[0] < 0){
	alarm[0] = room_speed/3
}

//Impact particle for hitting Gravers

/*
with (obj_graver)
	if(place_meeting(x,y,obj_player_hurt_box) || place_meeting(x,y,obj_player_hurt_box_2)){
		part_particles_create(obj_particle_forest_ambient.particle_emitter, x + random_range(-5,5), y + random_range(-5,5),obj_particle_forest_ambient.impact_particle,10)
	}
*/
	
//Tomahawk throw particle trail
/*with (obj_tomahawk_projectile)
	part_particles_create(obj_particle_forest_ambient.particle_emitter, x + random_range(-3,3), y + random_range(-3,3),obj_particle_forest_ambient.tomahawk_trail,1)
	
*/

//Shitty player run trail 

/*with (obj_player)
	if(moving && !key_sprint){
		if(obj_particle_forest_ambient.alarm[1] < 0){
			obj_particle_forest_ambient.alarm[1] = room_speed/8
		}
	}
*/