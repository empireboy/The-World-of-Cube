// Horizontal movement
if movement = true {
    if keyboard_check(hotkey_left) || keyboard_check(vk_left) {
        spdc -= spd;
        if spdc <= -spdm {
            spdc = -spdm;
        }
    } else if keyboard_check(hotkey_right) || keyboard_check(vk_right) {
        spdc += spd;
        if spdc >= spdm {
            spdc = spdm;
        }
    } else {
        spdc *= spdd;
        if spdc > -spd && spdc < spd {
            spdc = 0;
        }
    }
}
