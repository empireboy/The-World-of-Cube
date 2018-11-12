if w_direction = walk_direction.left {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
} else {
    draw_sprite_ext(sprite_index, image_index, x + sprite_width, y, -1, 1, 0, c_white, 1);
}
