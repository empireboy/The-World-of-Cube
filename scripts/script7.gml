spd = 2;        //speed
spdc = 0;       //speedCurrent
spdd = 0.90;    //speedDecrease
spdm = 7;       //speedMax
spd_dodge = 20;
spd_dodge_time = room_speed*0.3;
j = false;      //jump
jf = 20;        //jumpForce
jfc = 0;        //jumpForceCurrent
jfd = 2;        //jumpForceDecrease
image_speed = 0.3;
image_speed_decrease = 0.001;
image_speed_increase = 0.07;
image_speed_max = 0.6;
image_direction = true;

//Hotkeys
hotkey_left = ord("A");
hotkey_right = ord("D");
hotkey_dodge = ord("L");
hotkey_jump = ord("K");

//Create view
instance_create(x,y,obj_view);

//Particles
part_sys = part_system_create();
part_system_depth(part_sys,-1);

part_type[0] = part_type_create();
part_type_shape(part_type[0], pt_shape_square);
part_type_orientation(part_type[0], 0, 0, 0, 0, 1);
part_type_size(part_type[0], 0.05, 0.15, 0, 0);
part_type_speed(part_type[0], 1, 1.5, 0.05, 0);
part_type_direction(part_type[0], 230, 310, 0, 4);
part_type_life(part_type[0], 10, 20);

part_type[1] = part_type_create();
part_type_shape(part_type[1], pt_shape_square);
part_type_orientation(part_type[1], 0, 0, 0, 0, 1);
part_type_size(part_type[1], 0.05, 0.25, 0, 0);
part_type_speed(part_type[1], 1, 1.5, 0.05, 0);
part_type_direction(part_type[1], 270, 270, 0, 4);
part_type_life(part_type[1], 100, 150);
part_type_colour2(part_type[1], c_red, c_yellow);

part_emitter[0] = part_emitter_create(part_sys);
part_emitter_region(part_sys, part_emitter[0], 0-100, room_width+100, -10, -5, ps_shape_ellipse, ps_distr_linear);
part_emitter_stream(part_sys, part_emitter[0], part_type[1], 1);
