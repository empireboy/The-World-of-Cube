spd = 4;        //speed
jfc = 0;        //jumpForceCurrent
jfd = 2;        //jumpForceDecrease
x_previous = x;
y_previous = y;
collision = false;
if object_index = obj_block_down {
collision_direction = 0;
} else if object_index = obj_block_up {
collision_direction = 1;
}
