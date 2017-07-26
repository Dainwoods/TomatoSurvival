playerXCoord = obj_player.x;
playerYCoord = obj_player.y;

tempXCoord = random_range(max(0, playerXCoord - 64), min(1024, playerXCoord + 64));
tempYCoord = random_range(max(64, playerYCoord - 64), min(736, playerYCoord + 64));
xCoord = tempXCoord - (tempXCoord mod(32)) + 16;
yCoord = tempYCoord - (tempYCoord mod(32)) + 16;

while(position_meeting(xCoord, yCoord, obj_player)) {
    tempXCoord = random_range(max(0, playerXCoord - 64), min(1024, playerXCoord + 64));
    tempYCoord = random_range(max(64, playerYCoord - 64), min(736, playerYCoord + 64));
    xCoord = tempXCoord - (tempXCoord mod(32)) + 16;
    yCoord = tempYCoord - (tempYCoord mod(32)) + 16;
}

///Spawns either a 1/2/3 way bomb
num = irandom_range(1, 4);
if(num == 1) {
    num = irandom_range(1, 4);
    if(num == 1) {
        instance_create(xCoord, yCoord, obj_1WayUp);
    }
    else if(num == 2) {
        instance_create(xCoord, yCoord, obj_1WayRight);
    }
    else if(num == 3) {
        instance_create(xCoord, yCoord, obj_1WayDown);
    }
    else {
        instance_create(xCoord, yCoord, obj_1WayLeft);
    }
}
else if(num == 2) {
    num = irandom_range(1, 6);
    if(num == 1) {
        instance_create(xCoord, yCoord, obj_2WayUpRight);
    }
    else if(num == 2) {
        instance_create(xCoord, yCoord, obj_2WayUpLeft);
    }
    else if(num == 3) {
        instance_create(xCoord, yCoord, obj_2WayUpDown);
    }
    else if(num == 4) {
        instance_create(xCoord, yCoord, obj_2WayRightLeft);
    }
    else if(num == 5) {
        instance_create(xCoord, yCoord, obj_2WayRightDown);
    }
    else {
        instance_create(xCoord, yCoord, obj_2WayLeftDown);
    }
}
else if(num == 3){
    num = irandom_range(1, 4);
    if(num == 1) {
        instance_create(xCoord, yCoord, obj_3WayNoDown);
    }
    else if(num == 2) {
        instance_create(xCoord, yCoord, obj_3WayNoRight);
    }
    else if(num == 3) {
        instance_create(xCoord, yCoord, obj_3WayNoUp);
    }
    else {
        instance_create(xCoord, yCoord, obj_3WayNoLeft);
    }
}
else {
    instance_create(xCoord, yCoord, obj_4WayBomb);
}


//Same exact thing as above but with a wider range of spawning
if(global.doubleEffect) {
    playerXCoord = obj_player.x;
    playerYCoord = obj_player.y;

    tempXCoord = random_range(0, 1024);
    tempYCoord = random_range(64, 736);
    xCoord = tempXCoord - (tempXCoord mod(32)) + 16;
    yCoord = tempYCoord - (tempYCoord mod(32)) + 16;

    while(position_meeting(xCoord, yCoord, obj_player)) {
        tempXCoord = random_range(0, 1024);
        tempYCoord = random_range(64, 736);
        xCoord = tempXCoord - (tempXCoord mod(32)) + 16;
        yCoord = tempYCoord - (tempYCoord mod(32)) + 16;
    }

    ///Spawns either a 1/2/3 way bomb
    num = irandom_range(1, 4);
    if(num == 1) {
        num = irandom_range(1, 4);
        if(num == 1) {
            instance_create(xCoord, yCoord, obj_1WayUp);
        }
        else if(num == 2) {
            instance_create(xCoord, yCoord, obj_1WayRight);
        }
        else if(num == 3) {
            instance_create(xCoord, yCoord, obj_1WayDown);
        }
        else {
            instance_create(xCoord, yCoord, obj_1WayLeft);
        }
    }
    else if(num == 2) {
        num = irandom_range(1, 6);
        if(num == 1) {
            instance_create(xCoord, yCoord, obj_2WayUpRight);
        }
        else if(num == 2) {
            instance_create(xCoord, yCoord, obj_2WayUpLeft);
        }
        else if(num == 3) {
            instance_create(xCoord, yCoord, obj_2WayUpDown);
        }
        else if(num == 4) {
            instance_create(xCoord, yCoord, obj_2WayRightLeft);
        }
        else if(num == 5) {
            instance_create(xCoord, yCoord, obj_2WayRightDown);
        }
        else {
            instance_create(xCoord, yCoord, obj_2WayLeftDown);
        }
    }
    else if(num == 3){
        num = irandom_range(1, 4);
        if(num == 1) {
            instance_create(xCoord, yCoord, obj_3WayNoDown);
        }
        else if(num == 2) {
            instance_create(xCoord, yCoord, obj_3WayNoRight);
        }
        else if(num == 3) {
            instance_create(xCoord, yCoord, obj_3WayNoUp);
        }
        else {
            instance_create(xCoord, yCoord, obj_3WayNoLeft);
        }
    }
    else {
        instance_create(xCoord, yCoord, obj_4WayBomb);
    }
}


