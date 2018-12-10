enum Runeclaw_state {
	IDLE,
	ATTACKING,
}


//Set init variables and state
state = scr_enemy_idle

//Set Z-index to be below players
depth = 2

//Aggro Range
aggro_range = 0

//Attack Damage
attack_damage = 1

//Can attack
can_basic_attack = true

//Toggle Vulnerable
can_be_attacked = true

//Hit Points
//hit_points = 3
hit_points = 3

//Movement Speed
move_speed = random_range(6,8)

//Create wander path
//wander_path = path_add();
wandering = false
wander_frame = 0


path_to_player = -1

attack_path = -1

attack_frame = 0
attacking = false

dying = false

wamder_path = -1

tele_frame = 0


//How far we can go in one hop
jump_length = 8

can_jump = true

jump_timer = 0

//one second
jump_time_limit = irandom(200000) + 700000

//Path is available
has_path = false