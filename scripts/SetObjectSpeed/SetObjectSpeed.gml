/// @description SetObjectSpeed(newSpeed)
var newSpeed = argument0;
speed = newSpeed;
if(speed > 0){
    image_speed = ((speed*2)/room_speed);
}
