///CanWalkAt(xx,yy)
var canWalk = !place_meeting(argument0, argument1, obj_solid);
var debugMessage = "XX:"+string(argument0)+", YY:"+string(argument1)+", "+string(x)+" "+string(y)+", "+string(canWalk);
show_debug_message(debugMessage);
return canWalk;
