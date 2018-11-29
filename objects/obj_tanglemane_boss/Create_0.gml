/// @description Insert description here
// You can write your code in this editor



enum DIR {
	
	UP,
	DOWN,
	LEFT,
	RIGHT
	
}


state = scr_tanglemane_boss_chase

facing = DIR.DOWN


hit_points = 10


attacking = false
attack_damage = 0

phase = 1

aggro_dist = 200
move_speed = 5

//Variables for running
leap_frame = 0
max_leap_frame = 16
leap_num = 0

run_frames = 6
pause_timer = 0

leap_length = 80
big_leap_length = 200
target_x = 0
target_y = 0

hurt = false
knock_dir = 0 
hurt_frame = 0
max_hurt_frame =  20