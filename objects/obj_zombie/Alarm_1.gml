/// @description Slam attack
if(!IsNextToPlayer(defaultSpeed)){
    alarm[1] = -1;
}
else {
    health -= enemyStrength;
    alarm[1] = GetStepsFromSeconds(1);
}

