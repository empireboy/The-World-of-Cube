spd = 2;        //speed
spdc = 0;       //speedCurrent
spdd = 0.90;    //speedDecrease
spdm = 7;       //speedMax
spd_dodge = 20;
spd_dodge_time = room_speed*0.3;
j = false;      //jump
jf = 20;        //jumpForce
jf_knockback = 10;
jfc = 0;        //jumpForceCurrent
jfd = 2;        //jumpForceDecrease
image_speed = 0.3;
image_speed_decrease = 0.001;
image_speed_increase = 0.07;
image_speed_max = 0.6;
image_direction = true;
spd_attack = 25;
spd_attack_time = room_speed*0.2;
attack_cooldown = false;
attack_cooldown_time = room_speed*2;
alpha = 0;
alpha_range = 200;
alpha_increase = 0.1;
alpha_decrease = 0.1;
ai_range = 300;

//Hotkeys
activate_left = false;
activate_right = false;
activate_dodge = false;
activate_jump = false;
activate_attack = false;

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
