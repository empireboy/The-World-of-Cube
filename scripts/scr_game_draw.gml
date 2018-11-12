draw_self();

if draw = true {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_font(fnt_titles);
    draw_text(view_xview[0] + view_wview[0]/2, view_yview[0] + view_hview[0]/2-300, title);
    draw_set_font(fnt_small);
    draw_text(view_xview[0] + view_wview[0]/2, view_yview[0] + view_hview[0]/2+300, text_small);
    if object_index = obj_game_speedrun {
        if global.minutes != "" && global.seconds != "" {
        draw_set_color(c_black);
            if global.seconds < 10 {
                draw_text(view_xview[0] + view_wview[0]/2, view_yview[0] + view_hview[0]/2+360, "Best time = " + string(global.minutes) + ":" + "0" + string(global.seconds));
            } else {
                draw_text(view_xview[0] + view_wview[0]/2, view_yview[0] + view_hview[0]/2+360, "Best time = " + string(global.minutes) + ":" + string(global.seconds));
            }
        }
    }
}
