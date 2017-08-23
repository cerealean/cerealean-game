/// @description GetSpriteActionString()
var action = "";
if(global.isHeroMoving){
    action = "run";
}
else if(global.isHeroAttacking){
    action = "melee";
}
else{
    action = "stance";
}

return action;
