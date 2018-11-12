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

if instance_exists(obj_player) {
    if timeline_index = timeline_player_tutorial_0 {
        draw_set_font(fnt_tutorial);
        draw_set_halign(fa_center);
        if activate_left = true && activate_right = true {
            draw_set_color(c_white);
            draw_text(x, y-tutorial_text_title_offset, tutorial_text_title[0]);
            draw_text(x-tutorial_text_key_offset_hor, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_left);
            draw_text(x+tutorial_text_key_offset_hor, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_right);
        } else if activate_left = true {
            draw_set_color(c_white);
            draw_text(x, y-tutorial_text_title_offset, tutorial_text_title[0]);
            draw_text(x-tutorial_text_key_offset_hor, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_left);
            draw_set_color(c_gray);
            draw_text(x+tutorial_text_key_offset_hor, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_right);
        } else if activate_right = true {
            draw_set_color(c_white);
            draw_text(x, y-tutorial_text_title_offset, tutorial_text_title[0]);
            draw_set_color(c_gray);
            draw_text(x-tutorial_text_key_offset_hor, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_left);
            draw_set_color(c_white);
            draw_text(x+tutorial_text_key_offset_hor, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_right);
        } else {
            draw_set_color(c_white);
            draw_text(x, y-tutorial_text_title_offset, tutorial_text_title[0]);
            draw_set_color(c_gray);
            draw_text(x-tutorial_text_key_offset_hor, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_left);
            draw_text(x+tutorial_text_key_offset_hor, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_right);
        }
        draw_set_halign(fa_left);
    } else if timeline_index = timeline_player_tutorial_1 {
        draw_set_font(fnt_tutorial);
        draw_set_halign(fa_center);
        if activate_jump = true {
            draw_set_color(c_white);
            draw_text(x, y-tutorial_text_title_offset, tutorial_text_title[1]);
            draw_text(x, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_jump);
        } else {
            draw_set_color(c_white);
            draw_text(x, y-tutorial_text_title_offset, tutorial_text_title[1]);
            draw_set_color(c_gray);
            draw_text(x, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_jump);
        }
        draw_set_halign(fa_left);
    } else if timeline_index = timeline_player_tutorial_2 {
        draw_set_font(fnt_tutorial);
        draw_set_halign(fa_center);
        if activate_attack = true {
            draw_set_color(c_white);
            draw_text(x, y-tutorial_text_title_offset, tutorial_text_title[2]);
            draw_text(x, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_jump);
        } else {
            draw_set_color(c_white);
            draw_text(x, y-tutorial_text_title_offset, tutorial_text_title[2]);
            draw_set_color(c_gray);
            draw_text(x, y-tutorial_text_key_offset_vert, obj_player.hotkey_change_attack);
        }
        draw_set_halign(fa_left);
    }
}
