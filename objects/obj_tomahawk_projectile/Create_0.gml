/// @description Insert description here
// You can write your code in this editor

//Set Lifespan
life_span = 75

//Damage
attack_damage = 2

//Move Speed
move_speed = 16

returning = false

//Starting Point
start_point_x = x

start_point_y = y

//Can destroy
can_return = false

max_distance = 200

offset_dist = 30

shoot_dir = obj_player.move_dir

if (shoot_dir == 0 and obj_player.image_xscale == -1){
	shoot_dir = 180
}

far_point_x = x + lengthdir_x(max_distance, shoot_dir)
far_point_y = y + lengthdir_y(max_distance, shoot_dir)

half_x = (far_point_x - x)/2 + x
half_y = (far_point_y - y)/2 + y

point_1_x = half_x +  lengthdir_x(offset_dist, shoot_dir+90)
point_1_y = half_y +  lengthdir_y(offset_dist, shoot_dir+90)

point_3_x = half_x -  lengthdir_x(offset_dist, shoot_dir+90)
point_3_y = half_y -  lengthdir_y(offset_dist, shoot_dir+90)

final_x = obj_player.x
final_y = obj_player.y

fly_path = path_add()

path_set_closed(fly_path, false)

path_position = 0

path_add_point(fly_path, x, y, move_speed)
path_add_point(fly_path, x, y, move_speed)
path_add_point(fly_path, point_1_x, point_1_y, move_speed)
path_add_point(fly_path, far_point_x, far_point_y, move_speed)
path_add_point(fly_path, point_3_x, point_3_y, move_speed)
path_add_point(fly_path, x, y, move_speed)

path_set_kind(fly_path, 1)
path_start(fly_path, 0, 0, 1)

//Screen Shake
obj_view.shaking = true	
obj_view.shake_intensity = 10
	
//Determine sprite face and fire in direction
if(obj_player.image_xscale > 0){
	image_xscale = 1

} else {
	image_xscale = -1

}