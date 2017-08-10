var dir = argument0;
var right = 0;
var up = 90;
var left = 180;
var down = 270;
var segment = 22.5;
// This is wrong and needs fixed

if(dir > (360 - segment) && dir =< 360){
    return Directions.Right;
}
else if(dir > right && dir =< (right + segment)){
    return Directions.Right;
}
else if(dir > (right + segment) && dir < up){
    return Directions.Up;
}
