//Set init variables and state
state = scr_graver_idle

//Set Z-index to be below players
depth = 2

//Aggro Range
aggro_range = 150

//Attack Damage
attack_damage = 1

//Can attack
can_basic_attack = true

//Toggle Vulnerable
rune_claw_can_be_attacked = true

//Hit Points
//hit_points = 3
hit_points = 3

//Movement Speed
move_speed = 1//random_range(.5,2.5)

//Create wander path
//wander_path = path_add();
wandering = false
wander_frame = 0


path_to_player = -1
path_time = 0

attack_path = -1

attack_frame = 0
attacking = false

dying = false

wamder_path = -1

tele_frame = 0


//How far we can go in one hop
jump_length = 6


//How close before they come directly at player
focus_dist = 64

can_jump = true

jump_timer = 0

//one second
jump_time_limit = 0

//Path is available
has_path = false


//is strafing
strafing = false

