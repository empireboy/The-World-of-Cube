scr_circle_enumerators();

current_state = object_states.None;
new_state = object_states.Wander;

spdc = 0;
w_direction = walk_direction.left;

platform = scr_get_nearest_platform(id);
player = instance_find(obj_player, 0);

// Wander initialize
wander_spd = 4;
wander_look_interval = round(room_speed * random_range(0.45, 0.55));
wander_look_interval_current = 0;
wander_view_length = 350;
