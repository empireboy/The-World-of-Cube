// Horizontal movement
if (spdc != spd_dodge && spdc != -spd_dodge && spdc != spd_attack && spdc != -spd_attack) {
    if activate_left {
        spdc -= spd;
        image_direction = true;
        if spdc <= -spdm {
            spdc = -spdm;
        }
        if image_speed < image_speed_max {
            image_speed += image_speed_increase;
        }
    } else if activate_right {
        spdc += spd;
        image_direction = false;
        if spdc >= spdm {
            spdc = spdm;
        }
        if image_speed < image_speed_max {
            image_speed += image_speed_increase;
        }
    } else {
        spdc *= spdd;
        if image_speed > 0 {
            if image_index != 0 {
                image_speed -= image_speed_decrease;
            } 
        } else {
            image_speed = 0;
        }
        if image_index < 1 {
            image_speed = 0;
            image_index = 0;
        }
        if spdc > -spd && spdc < spd {
            spdc = 0;
        }
    }
}

if activate_dodge {
    if spdc != spd_dodge {
        if image_direction = true {
            spdc = -spd_dodge;
        } else if image_direction = false {
            spdc = spd_dodge;
        }
        alarm[0] = spd_dodge_time;
    }
}

if attack_cooldown = false {
    if activate_attack {
        activate_attack = false;
        attack_cooldown = true;
        if spdc != spd_attack {
            if image_direction = true {
                spdc = -spd_attack;
            } else if image_direction = false {
                spdc = spd_attack;
            }
            alarm[1] = spd_attack_time;
            alarm[2] = attack_cooldown_time;
        }
    }
}

if image_direction = true {
    if spdc = -spd_attack {
        if place_meeting(x,y,obj_player) {
        alarm[1] = 1;
        }
    }
} else if image_direction = false {
    if spdc = spd_attack {
        if place_meeting(x,y,obj_player) {
        alarm[1] = 1;
        }
    }
}

if !place_meeting(x + spdc, y, obj_wall) {
    x += spdc;
}

// verticle movement
if !j {
    if activate_jump {
        j = true;
        jfc = -jf;
        activate_jump = false;
        part_particles_create(part_sys, x, y-20, part_type[0], 10);
    }
}

if (spdc != spd_dodge && spdc != -spd_dodge) {
    y += jfc;
}

// Gravity
if y + sprite_height/2 < room_height {
    if (spdc != spd_dodge && spdc != -spd_dodge) {
    jfc += jfd;
    //image_index = 7;
    }
} else {
    y = room_height - sprite_height/2;
    jfc = 0;
    j = false;
}

// Collision with walls
if place_meeting(x, y + jfc, obj_wall) {
    while !place_meeting(x, y + sign(jfc), obj_wall) {
        y += sign(jfc);
    }
    jfc = 0;
}

if place_meeting(x, y + 1, obj_wall) {
    j = false;
}

if place_meeting(x + spdc, y, obj_wall) {
    while !place_meeting(x + sign(spdc), y, obj_wall) {
        x += sign(spdc);
    }
    spdc = 0;
}

// Collision with jump
if place_meeting(x, y, obj_jump) {
    if j = false {
        activate_jump = true;
    }
}

// Change alpha
if alpha_change = true {
    if alpha < alpha_max {
        alpha += alpha_increase;
    } else {
        alpha = alpha_max;
    }
} else {
    if alpha > 0 {
        alpha -= alpha_decrease;
    } else {
        alpha = 0;
    }
}

// Tutorial
if instance_exists(obj_player) {
    if timeline_check = 1 {
        if obj_player.check_movement_left = true && obj_player.check_movement_right = true {
            timeline_index = timeline_player_tutorial_1;
            timeline_running = true;
            timeline_loop = false;
            timeline_position = 25;
            timeline_check++;
        }
    }
    
    if timeline_check = 3 {
        if obj_player.check_jump_up = true {
            timeline_index = timeline_player_tutorial_2;
            timeline_running = true;
            timeline_loop = false;
            timeline_position = 25;
            timeline_check++;
        }
    }
}
