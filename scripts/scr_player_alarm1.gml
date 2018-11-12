if image_direction = true {
    spdc = spdm;
} else if image_direction = false {
    spdc = -spdm;
}

if place_meeting(x, y, obj_enemy) {
spdc = -spdm;
spdc = spdm;
jfc = 0;
j = true;
jfc = -jf_knockback;
part_particles_create(part_sys, x, y-20, part_type[0], 10);
    with instance_nearest(x, y, obj_enemy) {
        repeat(50) {
            instance_create(x, y, obj_blood);
        }
        instance_destroy();
    }
    if room = rm_tutorial {
        alarm[3] = tutorial_end_time;
    }
}
