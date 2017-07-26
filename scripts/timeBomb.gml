///timeBomb()
//Spawns a time bomb

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

instance_create(xCoord, yCoord, obj_timeBomb);
