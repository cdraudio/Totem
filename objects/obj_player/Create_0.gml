/// @description Initialize Player With Starting Variables

// Set Animation Speed
image_speed = 1

// Set Init Variables
hsp = 1
vsp = 1
depth = -1

//enum directions {
	//none, top, topright, right, bottomright, bottom, bottomleft, left, topleft
//}

//right - 0, up = 1, left = 2, down = 3
dir = 0 //directions.none


dir_x = 0
dir_y = 0

x_dir = 0
y_dir = 0
move_dir = 0

//facing is used for sprite direction control
facing = 0

//Move speed feels good at 3
move_speed = 4

// TODO(shaw): figure this out, want dash to be 3 tiles @ 32pixels = 96pixels
dash_dist = 96
dash_speed = 0.1 // this is a percentage to lerp every frame
dashing = false
can_dash = true
dash_target_x = 0
dash_target_y = 0
dash_frame = 0
hit_solid = false //Did hit a solid while dashing

//Attack Cooldown Toggles
attacking = false
can_be_attacked = true
in_combat = false
can_basic_attack = true
basic_attack_1 = false
basic_attack_2 = false
can_throw_tomahawk = true


//hit_points
max_hit_points = 3
hit_points = 3

//Mana
max_mana = 12
mana  = 12

//Clarity
clarity_count = 8
max_clarity = 8

hurt = false
hurt_frame = 0
max_hurt_frame = 30

//Form Switch
tanglemane = false
//Toggle for triggering transform effect once only
started_transform = false

//Toggle for playing footstep SFX
footstep_count = 0

//Timer for playing dust animation
dust_count = 0

//Timer for playing dust roll animation
roll_dust_count = 5

//Init state
state = scr_player_move

//Set listener position relative to player
audio_listener_orientation(0,1,0,0,0,1);

