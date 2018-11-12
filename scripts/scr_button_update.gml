if place_meeting(x, y, obj_player) || place_meeting(x, y, obj_block_parent) {
    image_index = 1;
    state = 1;
} else {
    image_index = 0;
    state = 0;
}
