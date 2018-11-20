/// @description Insert description here
// You can write your code in this editor



enum DIR {
	
	UP,
	DOWN,
	LEFT,
	RIGHT
	
}


state = scr_tanglemane_boss_idle

facing = DIR.DOWN


hit_points = 10




phase = 1

//Variables for running
leap_frame = 0
max_leap_frame = 8
jump_num = 0

run_frames = 6
pause_timer = 0

leap_length = 30
big_leap_length = 50
target_x = 0
target_y = 0
