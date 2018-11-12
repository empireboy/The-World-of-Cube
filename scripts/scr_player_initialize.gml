spd = 2;        //speed
spdc = 0;       //speedCurrent
spdd = 0.93;    //speedDecrease
spdm = 12;       //speedMax
j = false;      //jump
jf = 41;        //jumpForce
jfc = 0;        //jumpForceCurrent
jfd = 2;        //jumpForceDecrease
x_previous = x;
y_previous = y;
collision_direction = 0;
movement = true;

//Hotkeys
hotkey_change_left = "A";
hotkey_change_right = "D";
hotkey_change_jump = vk_space;
hotkey_left = ord(hotkey_change_left);
hotkey_right = ord(hotkey_change_right);
hotkey_jump = (hotkey_change_jump);
