draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], false);

if room = rm_menu {
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_set_font(fnt_title);
    draw_text(obj_player.xstart-1530,obj_player.ystart-100,"The World of Cube");
}

if room != rm_menu && room != rm_credits {
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_set_font(fnt_restart);
    draw_set_alpha(1);
    draw_text(view_xview[0]+32,view_yview[0]+32,"Press [R] to restart level");
}
