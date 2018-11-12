if open = true {
    if ystart-sprite_height < y {
        y -= spd;
    } else {
        y = ystart-sprite_height;
    }
} else {
    if y < ystart {
        y += spd;
    } else {
        y = ystart;
    }
}
