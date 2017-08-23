var isNextToPlayer = distance_to_object(obj_hero) <= defaultSpeed;
if(!isNextToPlayer){
    SetObjectSpeed(defaultSpeed);
    var moveTowardsX = random_range(0, room_width);
    var moveTowardsY = random_range(0, room_height);
    move_towards_point(moveTowardsX, moveTowardsY, speed);
}

action_set_alarm(room_speed * 4, 0);
