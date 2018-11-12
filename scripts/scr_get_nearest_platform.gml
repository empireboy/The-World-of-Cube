/// scr_get_nearest_platform(current_object)

current_object = argument0;

if current_object > 0 {
    var number_platforms = instance_number(obj_wall);
    var current_platform = -1;
    var closest_platform = -1;
    for (var i = 0; i < number_platforms; i++) {
        current_platform = instance_find(obj_wall, i);
        if closest_platform = -1 {
            closest_platform = current_platform;
        } else {
            if abs(current_object.bbox_bottom - current_platform.bbox_top < abs(current_object.bbox_bottom - closest_platform.bbox_top)) {
                closest_platform = current_platform
            }
        }
    }
    
    return closest_platform
} else {
    return -1;
}
