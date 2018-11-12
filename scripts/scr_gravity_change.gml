var platformAmount = instance_number(obj_gravity_change_parent);
var platform = -1;

for (var i = 0; i < platformAmount; i++) {
    platform = instance_find(obj_gravity_change_parent, i);
        
    if
    (
       bbox_left <= platform.bbox_right &&
       bbox_right >= platform.bbox_left &&
       bbox_top <= platform.bbox_bottom &&
       bbox_bottom >= platform.bbox_top
    )
    {
        if collision_direction = 0 {
            collision_direction = 1;
        } else {
            collision_direction = 0;
        }
    }
}
