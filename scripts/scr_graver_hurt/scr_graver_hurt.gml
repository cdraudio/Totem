//Change image_blend and set image_speed to 0
image_blend = c_red
sprite_index = spr_graver_hurt_side
move_speed = 0

//Make self invincible
rune_claw_can_be_attacked = false

// Briefly end mp_grid path so that enemy gets knocked back
path_end()

//Make sure they are on the groud
path_position = 0


knock_dir = point_direction(obj_player.x, obj_player.y, x, y)

// Knockback, first arg is distance of knock
x += lengthdir_x(0.5, knock_dir);
y += lengthdir_y(0.5, knock_dir);


//Exit hurt_state
if(alarm[0] == -1){
	alarm[0] = room_speed/15
}

