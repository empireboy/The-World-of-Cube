if distance_to_object(obj_player) <= 100 {
draw_set_font(fnt_normal);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x+sprite_width/2, y-64, "Press E");
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
