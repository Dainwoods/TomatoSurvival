///explode(Xcoord, yCoord, up, right, down, left)
xCoord = argument[0];
yCoord = argument[1];
up = argument[2];
right = argument[3];
down = argument[4];
left = argument[5];

if(up) {
    for(i = yCoord; i > 0; i -= 32) {
        instance_create(xCoord, i, obj_explosion);
    }
}
if(right) {
    for(i = xCoord + 32; i < 1024; i += 32) {
        instance_create(i, yCoord, obj_explosion);
    }
}
if(down) {
    for(i = yCoord + 32; i < 736; i += 32) {
        instance_create(xCoord, i, obj_explosion);
    }
}
if(left) {
    for(i = xCoord - 32; i > 0; i -= 32) {
        instance_create(i, yCoord, obj_explosion);
    }
}
