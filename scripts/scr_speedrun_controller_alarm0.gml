if room != rm_credits {
    if speedrun_start_time >= 0 {
        if speedrun_start_time = 0 {
            obj_player.movement = true;
        }
        speedrun_start_time--;
    } else {    
        if speedrun_start_time <= -1 {
            if timer_seconds < 59 {
                timer_seconds++;
            } else {
                timer_seconds = 0;
                timer_minutes++;
            }
        }
    }
    
    alarm[0] = room_speed;
} else {
    ini_open("savedata.ini");
    var timer_min = ini_read_string("Speedrun", "minutes", "");
    var timer_sec = ini_read_string("speedrun", "seconds", "");
    
    if timer_min != "" && timer_sec != "" {
        if (real(timer_minutes) <= real(timer_min)) || (real(timer_minutes) = timer_min && real(timer_seconds) < real(timer_sec)) {
            ini_write_string("Speedrun", "minutes", string(timer_minutes));
            if timer_seconds < 10 {
                ini_write_string("Speedrun", "seconds", "0" + string(timer_seconds));
            } else {
                ini_write_string("Speedrun", "seconds", "" + string(timer_seconds));
            }
        }
    } else {
        ini_write_string("Speedrun", "minutes", string(timer_minutes));
        if timer_seconds < 10 {
            ini_write_string("Speedrun", "seconds", "0" + string(timer_seconds));
        } else {
            ini_write_string("Speedrun", "seconds", "" + string(timer_seconds));
        }
    }
    ini_close();
}
