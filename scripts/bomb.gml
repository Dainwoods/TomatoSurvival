///bomb()
//Spawns a type of bomb when triggered
num = irandom_range(1, 2);
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

if(num == 1) {
    instance_create(xCoord, yCoord, obj_5x5Bomb);
}
else if(num == 2) {
    instance_create(xCoord, yCoord, obj_3x3Bomb);
}

if(global.doubleEffect) {
    playerXCoord = obj_player.x;
    playerYCoord = obj_player.y;

    tempXCoord = random_range(0, 1024);
    tempYCoord = random_range(64,736);
    xCoord = tempXCoord - (tempXCoord mod(32)) + 16;
    yCoord = tempYCoord - (tempYCoord mod(32)) + 16;

    while(position_meeting(xCoord, yCoord, obj_player) && position_meeting(xCoord, yCoord, par_bomb)) {
    tempXCoord = random_range(max(0, playerXCoord - 64), min(1024, playerXCoord + 64));
    tempYCoord = random_range(max(64, playerYCoord - 64), min(736, playerYCoord + 64));
    xCoord = tempXCoord - (tempXCoord mod(32)) + 16;
    yCoord = tempYCoord - (tempYCoord mod(32)) + 16;
    }

    if(num == 1) {
        instance_create(xCoord, yCoord, obj_5x5Bomb);
    }
    else if(num == 2) {
        instance_create(xCoord, yCoord, obj_3x3Bomb);
    }
}
