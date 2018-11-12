if distance_to_object(obj_player) <= 40 {
    if keyboard_check_pressed(ord("E")) {
        image_index = 1;
        with obj_block_parent {
            x = xstart;
            y = ystart-1;
        }
        alarm[0] = 7;
    }
}
