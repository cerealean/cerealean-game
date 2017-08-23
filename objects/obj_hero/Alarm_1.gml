/// @description Attacking
var newX = x + lengthdir_x(30, direction);
var newY = y + lengthdir_y(30, direction);

with(obj_enemy_controller){
    if(collision_line(obj_hero.x,obj_hero.y,newX,newY,id,false,false)){
        instance_destroy();
    }
}

if(keyboard_check(vk_space)){
    alarm[1] = GetStepsFromSeconds(1.5);
}
else{
    global.isHeroAttacking = false;
}

