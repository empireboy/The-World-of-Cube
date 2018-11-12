if collision_direction = 0 {
    var platformAmount = instance_number(obj_solid);
    var platform = -1;
    
    // je kan niet springen tenzij je op platform staat
    for (var i = 0; i < platformAmount; i++) {
        
    platform = instance_find(obj_solid, i);
        
        if (platform.id == id)
        { continue; }
        
        if
        (
           bbox_left <= platform.bbox_right &&
           bbox_right >= platform.bbox_left &&
           bbox_top <= platform.bbox_bottom &&
           bbox_bottom >= platform.bbox_top
        )
        {
            if (bbox_bottom - (y - y_previous) <= platform.bbox_top)
            {
                //From Top:
                if platform.object_index != obj_player {
                    y = platform.bbox_top - sprite_height;
                    jfc = 0;
                }
            }
            else if (bbox_top - (y - y_previous) >= platform.bbox_bottom)
            {
                //From Bottom:
                if platform.object_index != obj_player {
                    y = platform.bbox_bottom;
                    jfc = 0;
                }
            }
            if platform.object_index != obj_player {
                if (bbox_left - (x - x_previous) >= platform.bbox_right) {
                    //Platform From Right:
                    x = platform.bbox_right;
                    collision = true;
                } else if (bbox_right - (x - x_previous) <= platform.bbox_left) {
                    //Platform From Left:
                    x = platform.bbox_left - sprite_width+1;
                    collision = true;
                } else {
                    collision = false;
                }
            } if platform.object_index = obj_player {
                if (platform.bbox_left - (platform.x - platform.x_previous) > bbox_right) {
                    //Player From Right:
                    if collision = false {
                        x += platform.spdc;
                    } else {
                        platform.x = bbox_right;
                        platform.spdc = 0;
                    }
                } else if (platform.bbox_right - (platform.x - platform.x_previous) <= bbox_left) {
                    //Player From Left:
                    if collision = false {
                        x += platform.spdc;
                    } else {
                        platform.x = bbox_left - sprite_width;
                        platform.spdc = 0;
                    }
                }
            }
        }
    }
    var platformAmount = instance_number(obj_button);
    var platform = -1;
    
    for (var i = 0; i < platformAmount; i++) {
        
        platform = instance_find(obj_button, i);
    
        if
        (
           bbox_left <= platform.bbox_right &&
           bbox_right >= platform.bbox_left &&
           bbox_top <= platform.bbox_bottom &&
           bbox_bottom >= platform.bbox_top
        )
        {
            x = platform.x;
            y = platform.y-5;
        }
    }
} else if collision_direction = 1 {
    var platformAmount = instance_number(obj_solid);
    var platform = -1;
    
    // je kan niet springen tenzij je op platform staat
    for (var i = 0; i < platformAmount; i++) {
        
    platform = instance_find(obj_solid, i);
        
        if (platform.id == id)
        { continue; }
        
        if
        (
           bbox_left <= platform.bbox_right &&
           bbox_right >= platform.bbox_left &&
           bbox_top <= platform.bbox_bottom &&
           bbox_bottom >= platform.bbox_top
        )
        {
            if (bbox_bottom - (y - y_previous) <= platform.bbox_top)
            {
                //From Top:
                if platform.object_index != obj_player {
                    y = platform.bbox_top - sprite_height;
                    jfc = 0;
                }
            }
            else if (bbox_top - (y - y_previous) >= platform.bbox_bottom)
            {
                //From Bottom:
                y = platform.bbox_bottom;
                jfc = 0;
            }
            if platform.object_index != obj_player {
                if (bbox_left - (x - x_previous) >= platform.bbox_right) {
                    //Platform From Right:
                    x = platform.bbox_right;
                    collision = true;
                } else if (bbox_right - (x - x_previous) <= platform.bbox_left) {
                    //Platform From Left:
                    x = platform.bbox_left - sprite_width+1;
                    collision = true;
                } else {
                    collision = false;
                }
            } if platform.object_index = obj_player {
                if (platform.bbox_left - (platform.x - platform.x_previous) >= bbox_right) {
                    //Player From Right:
                    if collision = false {
                        x += platform.spdc;
                    } else {
                        platform.x = bbox_right;
                        platform.spdc = 0;
                    }
                } else if (platform.bbox_right - (platform.x - platform.x_previous) <= bbox_left) {
                    //Player From Left:
                    if collision = false {
                        x += platform.spdc;
                    } else {
                        platform.x = bbox_left - sprite_width;
                        platform.spdc = 0;
                    }
                }
            }
        }
    }
    var platformAmount = instance_number(obj_button);
    var platform = -1;
    
    for (var i = 0; i < platformAmount; i++) {
        
        platform = instance_find(obj_button, i);
    
        if
        (
           bbox_left <= platform.bbox_right &&
           bbox_right >= platform.bbox_left &&
           bbox_top <= platform.bbox_bottom &&
           bbox_bottom >= platform.bbox_top
        )
        {
            x = platform.x;
            y = platform.y+5;
        }
    }
}
