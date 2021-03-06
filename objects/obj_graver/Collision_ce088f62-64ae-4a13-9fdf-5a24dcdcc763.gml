/// @description Collision With Player attack_box

//Set knockback direction
knock_dir = point_direction(obj_player.x, obj_player.y, x, y);

//Decrement hit_points by other.damage
hit_points -= other.attack_damage

//Screen shake and room freeze
obj_view.shaking = true
obj_view.shake_intensity = 8

image_speed = 0
obj_player.image_speed = 0
if(alarm[3] < 0){
	//sends to hurt state and resets image freeze
	alarm[3] = 3	
}

instance_create_layer(x,y,"Instances",obj_blood_impact)

//Particle impact
scr_enemy_hit_from_L(id)

//Create blood
scr_create_blood(5)

