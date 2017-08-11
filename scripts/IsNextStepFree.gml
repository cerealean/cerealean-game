///IsNextStepFree(speed)
var spd = argument0;
var xSign = sign(x);
var ySign = sign(y);
return place_free(x+(xSign*spd),y+(ySign*spd));
