if
(
   bbox_left <= obj_player.bbox_right &&
   bbox_right >= obj_player.bbox_left &&
   bbox_top <= obj_player.bbox_bottom &&
   bbox_bottom >= obj_player.bbox_top
)
{
    image_index = 1;
    draw = true;
    if keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter) {
        room_goto(rm_level_1);
    }
} else {
    image_index = 0;
    draw = false;
}
