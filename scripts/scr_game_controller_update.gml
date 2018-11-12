if keyboard_check_pressed(vk_escape) {
    if room != rm_menu {
        room_goto(rm_menu);
    }
}

if room != rm_credits {
    if room != rm_level_3 {
        if obj_player.x >= 5000 {
            alpha = (obj_player.x-5000)/1000;
        } else if obj_player.x <= 2100 {
            alpha = (-obj_player.x+2100)/500;
        } else {
            alpha = 0;
        }
    } else {
        if obj_player.x >= 5200 {
            alpha = (obj_player.x-5200)/1000;
        } else if obj_player.x <= 2100 {
            alpha = (-obj_player.x+2100)/500;
        } else {
            alpha = 0;
        }
    }
}

var platformAmount = instance_number(obj_button);
var platform = -1;

for (var i = 0; i < platformAmount; i++) {
    platform = instance_find(obj_button, i);
    
    if i = 0 { buttons_checked = 0; }
    
    if platform.state = 1 {
        buttons_checked++;
    }
    
    if i = platformAmount-1 {
        if buttons_checked = platformAmount {
            obj_door.open = true;
        } else {
            obj_door.open = false;
        }
    }
}
