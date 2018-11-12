draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(fnt_titles);
draw_set_alpha(1);
draw_text(room_width/2, y, "Sprites#Backgrounds#Level Design#Music#Scripting");

draw_set_font(fnt_small);
draw_text(room_width/2, y + 700, "By Casper Meloen");

if y < room_height/2+800 {
    draw_set_font(fnt_titles);
    draw_text(room_width/2, y - 800, "Made in 2017");
} else {
    draw_set_font(fnt_titles);
    draw_text(room_width/2, room_height/2, "Made in 2017");
}

if instance_exists(obj_speedrun_controller) {
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    draw_set_font(fnt_your_time);
    draw_set_color(c_white);
    draw_set_alpha(1);
    if obj_speedrun_controller.timer_seconds < 10 {
        draw_text(room_width-100, -30, "Your time = " + string(obj_speedrun_controller.timer_minutes) + ":" + "0" + string(obj_speedrun_controller.timer_seconds));
    } else {
        draw_text(room_width-100, -30, "Your time = " + string(obj_speedrun_controller.timer_minutes) + ":" + string(obj_speedrun_controller.timer_seconds));
    }
}
