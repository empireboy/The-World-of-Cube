if image_direction = true {
    spdc = spdm;
} else if image_direction = false {
    spdc = -spdm;
}

if place_meeting(x,y,obj_player) {
spdc = -spdm;
spdc = spdm;
jfc = 0;
j = true;
jfc = -jf_knockback;
part_particles_create(part_sys, x, y-20, part_type[0], 10);
}
