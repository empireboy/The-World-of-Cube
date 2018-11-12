if distance_to_object(obj_player) < global.vision_range {
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, show_color, show_alpha);
} else {
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, invisible_color, invisible_alpha);
}
