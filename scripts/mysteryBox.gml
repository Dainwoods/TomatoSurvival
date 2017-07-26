///mysteryBox()

//Spawn chest
instance_create(512, 720, obj_chest);

//Spawn key
tempXCoord = random_range(0, 1024);
tempYCoord = random_range(45, 672);
xCoord = tempXCoord - (tempXCoord mod(32)) + 16;
yCoord = tempYCoord - (tempYCoord mod(32)) + 16;
instance_create(xCoord, yCoord, obj_key);
