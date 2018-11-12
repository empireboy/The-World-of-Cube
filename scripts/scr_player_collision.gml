if collision_direction = 0 {
    var platformAmount = instance_number(obj_solid);
    var platform = -1;
    
    // je kan niet springen tenzij je op platform staat
    j = true;
    
    for (var i = 0; i < platformAmount; i++) {
        platform = instance_find(obj_solid, i);
        
        if (platform.id == id)
        { continue; }
        
        if (platform.object_index == obj_block_up || platform.object_index == obj_block_down)
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
                y = platform.bbox_top - sprite_height;
                jfc = 0;
                j = false;
            }
            else if (bbox_top - (y - y_previous) >= platform.bbox_bottom)
            {
                //From bottom:
                y = platform.bbox_bottom;
                jfc = 0;
            }
            else if (bbox_left - (x - x_previous) >= platform.bbox_right)
            {
                //From Right:
                x = platform.bbox_right+1;
                spdc = 0;
                //show_message("from right");
            }
            else if (bbox_right - (x - x_previous) <= platform.bbox_left)
            {
                //From Left:
                x = platform.bbox_left - sprite_width;
                spdc = 0;
            }
        }
    }
    
    /*var platformAmount = instance_number(obj_block_parent);
    var platform = -1;
    
    for (var i = 0; i < platformAmount; i++) {
        platform = instance_find(obj_block_parent, i);
        
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
                y = platform.bbox_top - sprite_height;
                jfc = 0;
                j = false;
            }
            else if (bbox_top - (y - y_previous) >= platform.bbox_bottom)
            {
                //From bottom:
                y = platform.bbox_bottom;
                jfc = 0;
            }
        }
    }*/
} else if collision_direction = 1 {
    var platformAmount = instance_number(obj_solid);
    var platform = -1;
    
    // je kan niet springen tenzij je op platform staat
    j = true;
    
    for (var i = 0; i < platformAmount; i++) {
        platform = instance_find(obj_solid, i);
        
        if (platform.id == id)
        { continue; }
        
        if (platform.object_index == obj_block_up || platform.object_index == obj_block_down)
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
                y = platform.bbox_top - sprite_height;
                jfc = 0;
            }
            else if (bbox_top - (y - y_previous) >= platform.bbox_bottom)
            {
                //From bottom:
                y = platform.bbox_bottom;
                jfc = 0;
                j = false;
            }
            else if (bbox_left - (x - x_previous) >= platform.bbox_right)
            {
                //From Right:
                x = platform.bbox_right+1;
                spdc = 0;
                //show_message("from right");
            }
            else if (bbox_right - (x - x_previous) <= platform.bbox_left)
            {
                //From Left:
                x = platform.bbox_left - sprite_width;
                spdc = 0;
            }
        }
    }
    
    /*var platformAmount = instance_number(obj_block_parent);
    var platform = -1;
    
    for (var i = 0; i < platformAmount; i++) {
        platform = instance_find(obj_block_parent, i);
        
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
                y = platform.bbox_top - sprite_height;
                jfc = 0;
                j = false;
            }
            else if (bbox_top - (y - y_previous) >= platform.bbox_bottom)
            {
                //From bottom:
                y = platform.bbox_bottom;
                jfc = 0;
            }
        }
    }*/
}
