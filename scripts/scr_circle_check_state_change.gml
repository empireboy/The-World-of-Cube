if new_state != current_state{
    switch (new_state) {
        case object_states.Wander:
            spdc = wander_spd;
        break;
        
        case object_states.Alert:
        
        break;
        
        case object_states.Panic:
        
        break;
    }
    
    current_state = new_state;
}
