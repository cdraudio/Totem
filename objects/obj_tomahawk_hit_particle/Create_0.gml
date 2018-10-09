/// @description Insert description here
// You can write your code in this editor
image_xscale = random_range(0.2,0.25)
image_yscale = image_xscale
image_blend = make_color_rgb(irandom(180),random_range(247,253),255);
dir = point_direction(obj_tomahawk_projectile.x,obj_tomahawk_projectile.y,x+random_range(-1,1),y+random_range(-1,1))
move_speed = 4