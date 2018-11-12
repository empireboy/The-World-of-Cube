if wander_look_interval_current < wander_look_interval {
    wander_look_interval_current++;
} else {
    if player.bbox_bottom >= bbox_top && player.bbox_top <= bbox_bottom - (sprite_height * 0.5) {
        if sign(wander_view_length - abs(player.x - x)) >= 0 {
            if (player.x - x) * w_direction >= 0 {
                new_state = object_states.Panic;
            }
        }
    }
    wander_look_interval_current = 0;
}
