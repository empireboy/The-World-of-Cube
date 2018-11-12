part_sys = part_system_create();
part_system_depth(part_sys,1);

part_type[0] = part_type_create();
part_type_shape(part_type[0], pt_shape_square);
part_type_orientation(part_type[0], 0, 360, 2, 0, 1);
part_type_size(part_type[0], 0.005, 0.2, 0, 0);
part_type_speed(part_type[0], 0.4, 1.5, 0.05, 0);
part_type_direction(part_type[0], 250, 290, 0, 4);
part_type_life(part_type[0], 4, 50);
part_type_colour1(part_type[0], c_aqua);

part_emitter[0] = part_emitter_create(part_sys);
part_emitter_region(part_sys, part_emitter[0], x-16, x+sprite_width+16, y, y+sprite_height, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(part_sys, part_emitter[0], part_type[0], 3);
