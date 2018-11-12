x += spdc * w_direction;

if scr_circle_check_edge() {
    if bbox_left <= platform.bbox_left {
        x = platform.bbox_left;
        w_direction = walk_direction.right;
    } else {
        x = platform.bbox_right - sprite_width;
        w_direction = walk_direction.left;
    }
}
