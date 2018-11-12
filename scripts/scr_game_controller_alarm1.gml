with obj_player {
    if collision_direction = 0 {
        collision_direction = 1;
    } else {
        collision_direction = 0;
    }
}

alarm[1] = gravity_change_time;
