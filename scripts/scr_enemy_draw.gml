if image_direction = true {
    if spdc = -spd_dodge {
        draw_sprite_ext(sprite_index, image_index, x+20*4, y, 1, 1, 0, c_white, 0.1);
        draw_sprite_ext(sprite_index, image_index, x+20*3, y, 1, 1, 0, c_white, 0.4);
        draw_sprite_ext(sprite_index, image_index, x+20*2, y, 1, 1, 0, c_white, 0.6);
        draw_sprite_ext(sprite_index, image_index, x+20*1, y, 1, 1, 0, c_white, 0.8);
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
    } else {
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, alpha);
    }
} else if image_direction = false {
    if spdc = spd_dodge {
        draw_sprite_ext(sprite_index, image_index, x-20*4, y, 1, 1, 0, c_white, 0.1);
        draw_sprite_ext(sprite_index, image_index, x-20*3, y, 1, 1, 0, c_white, 0.4);
        draw_sprite_ext(sprite_index, image_index, x-20*2, y, 1, 1, 0, c_white, 0.6);
        draw_sprite_ext(sprite_index, image_index, x-20*1, y, 1, 1, 0, c_white, 0.8);
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
    } else {
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, alpha);
    }
}
