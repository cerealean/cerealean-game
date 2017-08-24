/// @description Move Player
var MOVELEFT = keyboard_check(vk_left);
var MOVERIGHT = keyboard_check(vk_right);
var MOVEUP = keyboard_check(vk_up);
var MOVEDOWN = keyboard_check(vk_down);

if(!global.isHeroAttacking){
    if (MOVELEFT && CanWalkAt(x - global.walkSpeed, y)) 
    { 
        if(MOVEUP && CanWalkAt(x, y - global.walkSpeed)){
            y -= global.walkSpeed;
            direction = 135;
        }
        else if(MOVEDOWN && CanWalkAt(x, y + global.walkSpeed)){
            y += global.walkSpeed;
            direction = 225;
        }
        else{
            direction = 180;
        }
        x -= global.walkSpeed;
        global.isHeroMoving = true;
    }
     
    if (MOVERIGHT && CanWalkAt(x + global.walkSpeed, y)) 
    { 
        if(MOVEUP && CanWalkAt(x, y - global.walkSpeed)){
            y -= global.walkSpeed;
            direction = 45;
        }
        else if(MOVEDOWN && CanWalkAt(x, y + global.walkSpeed)){
            y += global.walkSpeed;
            direction = 315;
        }
        else {
            direction = 0;
        }
        x += global.walkSpeed;
        global.isHeroMoving = true;
    }
     
    if (MOVEUP && !MOVERIGHT && !MOVELEFT && CanWalkAt(x, y - global.walkSpeed)) 
    { 
        y -= global.walkSpeed;
        direction = 90;
        global.isHeroMoving = true;
    }
     
    if (MOVEDOWN && !MOVERIGHT && !MOVELEFT && CanWalkAt(x, y + global.walkSpeed)) 
    { 
        y += global.walkSpeed;
        direction = 270;
        global.isHeroMoving = true;
    }
}
if(keyboard_check(vk_nokey)){
    global.isHeroMoving = false;
}
image_speed = (global.walkSpeed/room_speed);

///Player Attack
var isMelee = keyboard_check(vk_space);

if(isMelee && alarm[1] == -1){
    global.isHeroAttacking = true;
    alarm[1] = 1;
}

///Death
if(health <= 0){
    HandlePlayerDeath();
}

