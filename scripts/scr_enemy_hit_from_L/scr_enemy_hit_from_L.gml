var xp, yp;

//argument0 : enemy/object getting hit
var _target = argument0;
xp = _target.bbox_right;
yp = _target.bbox_top;

//green sparks
part_emitter_region(obj_particle_forest_ambient.part_system, global.pe_GreenSpark1, xp-15, xp+5, yp+8, yp+32, ps_shape_rectangle, ps_distr_gaussian);
part_emitter_burst(obj_particle_forest_ambient.part_system, global.pe_GreenSpark1, global.pt_GreenSpark1, irandom_range(6,10));


//right blue smoke
part_emitter_region(obj_particle_forest_ambient.part_system, global.pe_Blu_R,_target.bbox_right, _target.bbox_right+19, _target.bbox_bottom-10, _target.bbox_bottom-15, ps_shape_rectangle, ps_distr_gaussian);
part_emitter_burst(obj_particle_forest_ambient.part_system, global.pe_Blu_R, global.pt_Blu_R, irandom_range(1,2));

//slice effect
part_emitter_region(obj_particle_forest_ambient.part_system, global.pe_Slice, xp-7, xp+17, yp+15, yp+17, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(obj_particle_forest_ambient.part_system, global.pe_Slice, global.pt_Slice, 1);