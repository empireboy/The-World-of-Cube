if room != rm_credits {
    if speedrun_start_time > 0 {
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_font(fnt_speedrun_start);
        draw_set_color(c_white);
        draw_set_alpha(1);
        draw_text(view_xview[0] + view_wview[0]/2, view_yview[0] + view_hview[0]/2, speedrun_start_time);
    } else {
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_font(fnt_speedrun_timer);
        draw_set_color(c_white);
        draw_set_alpha(1);
        if timer_seconds < 10 {
            draw_text(view_xview[0] + view_wview[0]-400, view_yview[0] + 64, string(timer_minutes) + " : " + "0" + string(timer_seconds));
        } else {
            draw_text(view_xview[0] + view_wview[0]-400, view_yview[0] + 64, string(timer_minutes) + " : " + string(timer_seconds));
        }
    }
}
