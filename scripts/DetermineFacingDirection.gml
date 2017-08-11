var dir = argument0;

if((dir > 337.5 && dir =< 360) || (dir =< 22.5 && dir >= 0)){
    return Facing.Right;
}
else if(dir > 22.5 && dir <= 67.5){
    return Facing.UpRight;
}
else if(dir > 67.5 && dir <= 112.5){
    return Facing.Up;
}
else if(dir > 112.5 && dir <= 157.5){
    return Facing.UpLeft;
}
else if(dir > 157.5 && dir <= 202.5){
    return Facing.Left;
}
else if(dir > 202.5 && dir <= 247.5){
    return Facing.DownLeft;
}
else if(dir > 247.5 && dir <= 292.5){
    return Facing.Down;
}
else if(dir > 292.5 && dir <= 337.5){
    return Facing.DownRight;
}
