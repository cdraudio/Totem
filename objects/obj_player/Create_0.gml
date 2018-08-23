/// @description Initialize Player With Starting Variables

// Set Animation Speed
image_speed = 1

// Set Init Variables
hsp = 1
vsp = 1
depth = -1

enum directions {
	none, top, topright, right, bottomright, bottom, bottomleft, left, topleft
}

dir = directions.none
dir_x = 0
dir_y = 0

x_dir = 0
y_dir = 0
move_dir = 0

//facing is used for sprite direction control
facing = 0

//Move speed feels good at 3
move_speed = 1

// TODO(shaw): figure this out, want dash to be 3 tiles @ 32pixels = 96pixels
dash_dist = 96
dash_speed = 0.1 // this is a percentage to lerp every frame
dashing = false
can_dash = true
dash_target_x = 0
dash_target_y = 0
dash_frame = 0

//Attack Cooldown Toggles
attacking = false
can_be_attacked = true
in_combat = false
can_basic_attack = true
basic_attack_1 = false
basic_attack_2 = false
can_fel_cannon = true


//hit_points
//hit_points = 3
hit_points = 10

hurt = false
hurt_frame = 0
max_hurt_frame = 30


state = scr_player_move

