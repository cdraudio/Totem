/// @description Insert description here
// You can write your code in this editor

//Set Lifespan
life_span = 75

//Damage
attack_damage = 2


//Move Speed
move_speed = 8

//Scale
image_xscale = 1.25
image_yscale = 1.25

//Determine sprite face and fire in direction
if(obj_player.image_xscale > 0){
	image_xscale = 1
	shoot_direction = point_direction(obj_player.x, obj_player.y, obj_player.x + 5, obj_player.y)
} else {
	image_xscale = -1
	shoot_direction = point_direction(obj_player.x, obj_player.y, obj_player.x - 5, obj_player.y)
}