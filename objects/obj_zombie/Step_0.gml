/// @description Movement and stance sprite
var isNextToPlayer = IsNextToPlayer(defaultSpeed);
var facing = DetermineFacingDirection(direction);
switch(facing){
    case Facing.Up:
        if(speed > 0){
            sprite_index = spr_zombie_move_up;
        }
        else if(isNextToPlayer){
            sprite_index = spr_zombie_slam_up;
        }
        else{
            sprite_index = spr_zombie_stance_up;
        }
        break;
    case Facing.UpLeft:
        if(speed > 0){
            sprite_index = spr_zombie_move_up_left;
        }
        else if(isNextToPlayer){
            sprite_index = spr_zombie_slam_up_left;
        }
        else{
            sprite_index = spr_zombie_stance_up_left;
        }
        break;
    case Facing.UpRight:
        if(speed > 0){
            sprite_index = spr_zombie_move_up_right;
        }
        else if(isNextToPlayer){
            sprite_index = spr_zombie_slam_up_right;
        }
        else{
            sprite_index = spr_zombie_stance_up_right;
        }
        break;
    case Facing.Right:
        if(speed > 0){
            sprite_index = spr_zombie_move_right;
        }
        else if(isNextToPlayer){
            sprite_index = spr_zombie_slam_right;
        }
        else{
            sprite_index = spr_zombie_stance_right;
        }
        break;
    case Facing.Left:
        if(speed > 0){
            sprite_index = spr_zombie_move_left;
        }
        else if(isNextToPlayer){
            sprite_index = spr_zombie_slam_left;
        }
        else{
            sprite_index = spr_zombie_stance_left;
        }
        break;
    case Facing.Down:
        if(speed > 0){
            sprite_index = spr_zombie_move_down;
        }
        else if(isNextToPlayer){
            sprite_index = spr_zombie_slam_down;
        }
        else{
            sprite_index = spr_zombie_stance_down;
        }
        break;
    case Facing.DownRight:
        if(speed > 0){
            sprite_index = spr_zombie_move_down_right;
        }
        else if(isNextToPlayer){
            sprite_index = spr_zombie_slam_down_right;
        }
        else{
            sprite_index = spr_zombie_stance_down_right;
        }
        break;
    case Facing.DownLeft:
        if(speed > 0){
            sprite_index = spr_zombie_move_down_left;
        }
        else if(isNextToPlayer){
            sprite_index = spr_zombie_slam_down_left;
        }
        else{
            sprite_index = spr_zombie_stance_down_left;
        }
        break;
}

///Movement Behavior
var distanceToPlayer = distance_to_object(obj_hero);
var isCloseToPlayer = distanceToPlayer <= defaultSpeed * 20;
var isNextToPlayer = distanceToPlayer <= defaultSpeed;
if(isNextToPlayer){
    SetObjectSpeed(0);
}
else if(isCloseToPlayer && IsNextStepFree(defaultSpeed)){
    alarm[0] = -1;
    direction = point_direction(x,y,obj_hero.x,obj_hero.y);
    SetObjectSpeed(defaultSpeed);
}
else if(!isCloseToPlayer && alarm[0] == -1){
    alarm[0] = room_speed * 4;
}

///Start Slam Attack Alarm
if(alarm[1] == -1 && IsNextToPlayer(defaultSpeed)){
    image_speed = (defaultSpeed / room_speed);
    alarm[1] = GetStepsFromSeconds(1);
}

