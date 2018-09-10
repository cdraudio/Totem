/// @description Collision With Player attack_box

//Set knockback direction
if(hittable){
	knock_dir = point_direction(obj_player.x, obj_player.y, x, y);

	//Decrement hit_points by other.damage
	hit_points -= other.attack_damage

	//Screen shake and room freeze
	obj_view.shaking = true
	obj_view.shake_intensity = 8

	room_speed = 10
	if(alarm[3] < 0){
		//sends to hurt state and resets image freeze
		alarm[3] = 1	
	}

	//Create blood
	instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
	instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
	instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
	instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
	instance_create_layer(x + random_range(-3,3),y + random_range(-5,5),"Instances",obj_blood_effect)
}