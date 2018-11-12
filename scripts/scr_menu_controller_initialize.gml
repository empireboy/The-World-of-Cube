alpha = 1;

if instance_exists(obj_speedrun_controller) {
    with obj_speedrun_controller {
        instance_destroy();
    }
}

ini_open("savedata.ini");
global.minutes = ini_read_string("Speedrun", "minutes", "");
global.seconds = ini_read_string("Speedrun", "seconds", "");
ini_close();
