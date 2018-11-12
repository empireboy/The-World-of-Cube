if platform != noone {
    if bbox_left <= platform.bbox_left || bbox_right >= platform.bbox_right {
        return true;
    } else {
        return false;
    }
} else {
    return true;
}
