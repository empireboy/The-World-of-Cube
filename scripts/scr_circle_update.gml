scr_circle_check_state_change();

switch (current_state) {
    case object_states.Wander:
        scr_circle_wander_walk();
        scr_circle_wander_look_for_player();
    break;
    
    case object_states.Alert:
    
    break;
    
    case object_states.Panic:
    
    break;
}
