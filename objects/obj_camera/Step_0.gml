/// @description Insert description here
// You can write your code in this editor
x += (to_x - x)/25
y += (to_y - y)/25

if(following != noone){
	to_x = following.x	
	to_y = following.y
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera,vm)