//Change image_blend and set image_speed to 0
hittable = false
image_blend = c_red
image_speed = 0

//Make self invincible
can_be_attacked = false

// Briefly end mp_grid path so that enemy gets knocked back
path_end()

//Make sure they are on the groud
path_position = 0


knock_dir = point_direction(obj_player.x, obj_player.y, x, y)

// Knockback, first arg is distance of knock
x += lengthdir_x(random_range(3,6), knock_dir);
y += lengthdir_y(random_range(3,6), knock_dir);


//Exit hurt_state and reset hit cooldown
if(alarm[6] == -1){
	alarm[6] = 8
}

if(alarm[0] == -1){
	alarm[0] = 1
}

