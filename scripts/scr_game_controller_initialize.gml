window_set_fullscreen(true);

if room = rm_level_1 {
    if !audio_is_playing(snd_begin) {
        if audio_is_playing(snd_intro) {
            audio_stop_all();
        }
        if audio_is_playing(snd_credits) {
            audio_stop_all();
        }
        snd = audio_play_sound(snd_begin, 10, true); 
        audio_sound_pitch(snd, 1);
        if instance_exists(obj_speedrun_controller) {
            with obj_player {
                movement = false;
            }
        }
    }
} else if room = rm_menu {
    if audio_is_playing(snd_begin) {
        audio_stop_all();
    }
    if audio_is_playing(snd_credits) {
        audio_stop_all();
    }
    if !audio_is_playing(snd_intro) {
        snd = audio_play_sound(snd_intro, 10, true); 
        audio_sound_pitch(snd, 1);
    }
} else if room = rm_credits {
    if audio_is_playing(snd_begin) {
        audio_stop_all();
    }
    if audio_is_playing(snd_intro) {
        audio_stop_all();
    }
    if !audio_is_playing(snd_credits) {
        snd = audio_play_sound(snd_credits, 10, true); 
        audio_sound_pitch(snd, 1);
    }
}
alpha = 1;
buttons_checked = 0;
