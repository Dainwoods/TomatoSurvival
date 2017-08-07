///mysteryBoxOpen()
num = random_range(0, 100);
eventTriggered = false;
while(!eventTriggered) {

    //One time upgrades/downgrades 15 percent
    if(num <= 2) { //Blocks now have a time limit
        if(!global.timeLimit) {
            global.timeLimit = true;
            eventTriggered = true;
            global.drawChestText1 = true;
        }
    }
    else if (num <= 4) { //Blocks are now indestructible by player
        if(!global.indestructible) {
            global.indestructible = true;
            eventTriggered = true;
            global.drawChestText2 = true;
        }
    }
    else if(num <= 6) { //Double weather duration and two bombs instead of one
        if(!global.doubleEffect) {
            global.doubleEffect = true;
            eventTriggered = true;
            global.drawChestText3 = true;
        }
    }
    else if(num <= 8) { //Double jump    
        if(!global.doubleJump) {
            global.doubleJump = true;
            eventTriggered = true;
            global.drawChestText4 = true;
        }
    }
    else if(num <= 10) { //The floor is gone!
        if(!global.floorGone) {
            global.floorGone = true;
            obj_eventHandler.alarm[2] = 1;
            eventTriggered = true;
            global.drawChestText17 = true;
        }
    }
    else if(num <= 12) { //Player now damagaes blocks while standing on it
        if(!global.damageBlocks) {
            global.damageBlocks = true;
            eventTriggered = true;
            global.drawChestText5 = true;
        }
    }
    else if(num <= 15) { //Player now takes a max of 1 damage from any source
        if(!global.oneDamage) {
            global.oneDamage = true;
            eventTriggered = true;
            global.drawChestText6 = true;
        }
    }
    


    //Revokable upgrades  5 percent
    else if(num <= 18) { //Permanent ability to see next disaster
        global.forecast = !global.forecast
        eventTriggered = true;
        global.drawChestText7 = true;
    }
    else if(num <= 20) { //No fall damage
        global.fallDamage = !global.fallDamage;
        eventTriggered = true;
        global.drawChestText8 = true;
    }
    



    //Multiple use     80 percent
    else if(num <= 30) { //Restore health
        if(health < 5) {
            health += 2;
            eventTriggered = true;
            global.drawChestText9 = true;
        }
        else if(health < 6) {
            health++;
            eventTriggered = true;
            global.drawChestText9 = true;
        }
    }
    else if(num <= 40) { //Gets rid of all blocks
        if(instance_exists(obj_buildingBlock)) {
            with(obj_buildingBlock) {
                instance_destroy();
            }
            eventTriggered = true;
            global.drawChestText10 = true;
        }
    }
    else if(num <= 50) { //Fills grid with blocks
        for(i = 16; i <= 1008; i += 32) {
            for(j = 80; j <= 720; j += 32) {
                if(position_meeting(i, j, obj_buildingBlock)) {
                    with(instance_position(i, j, obj_buildingBlock)) {
                        instance_destroy();
                    }
                }
                instance_create(i, j, obj_buildingBlock); 
            }
        }
        if(global.floorGone) {
            for(i = 16; i <= 1008; i += 32) {
                if(position_meeting(i, 752, obj_buildingBlock)) {
                    with(instance_position(i, 752, obj_buildingBlock)) {
                        instance_destroy();
                    }
                }
                instance_create(i, 752, obj_buildingBlock);
            }
        }
        eventTriggered = true;
        global.drawChestText11 = true;
    }
    /*else if(num <= 60) { //All natural disasters at once (rain, earthquake, lava)
        rain();
        //instance_create(0, 0, obj_earthquake);
        with(obj_wall) {
            alarm[1] = 1;
        }
        eventTriggered = true;
        global.drawChestText12 = true;
    }*/
    else if(num <= 70) {
        //Temporary invincibility
        global.invincible = true;
        obj_player.alarm[6] = 10 * room_speed;
        eventTriggered = true;
        global.drawChestText13 = true;
    }
    else if(num <= 80) {
        //Can't place blocks for x turns
        global.canPlace = false;
        obj_player.alarm[7] = 10 * room_speed;
        eventTriggered = true;
        global.drawChestText14 = true;
    }
    else if(num <= 90) { //Spawns a type of bomb
        odds = irandom_range(1, 3);
        if(odds == 1) {
            directionBomb();
        }
        else if(odds == 2) {
            bomb();
        }
        else {
            timeBomb();
        }
        eventTriggered = true;
        global.drawChestText15 = true;
    }
    else if(num <= 100) { //Gives 1-20 points. Small chance to double points
        num = irandom_range(0, 11);
        if(num <= 10) {
        num = num - (num mod(1));
            global.scr += num;
        }
        else {
            if(global.scr == 0) { //If player has no points, awards 10 points then doubles
                global.scr += 10;
            }
            global.scr = global.scr * 2; //If player hsa points, simply doubles
        }
        eventTriggered = true;
        global.drawChestText16 = true;
    }
    else if(num <= 105) { //raincoat
        global.raincoat = !global.raincoat;
        eventTriggered = true;
        global.drawChestText18 = true;
    }
    else if(num <= 106) {
        global.visibleBlocks = false;
        obj_player.alarm[8] = 30 * room_speed;
        eventTriggered = true;
        global.drawChestText19 = true;
    }
    
    num = random_range(0, 100);
}
