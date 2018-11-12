x_previous = x;
y_previous = y;

scr_player_gravity();

if collision_direction = 0 {
    y += jfc;
} else if collision_direction = 1 {
    y -= jfc;
}

scr_block_collision();
scr_gravity_change();
