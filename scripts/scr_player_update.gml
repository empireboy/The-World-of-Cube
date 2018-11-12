x_previous = x;
y_previous = y;

scr_player_gravity();
scr_player_jump();
scr_player_movement();

if collision_direction = 0 {
    x += spdc;
    y += jfc;
} else if collision_direction = 1 {
    x += spdc;
    y -= jfc;
}

scr_player_collision();
scr_gravity_change();

if x >= 6100 {
    room_goto_next();
}
