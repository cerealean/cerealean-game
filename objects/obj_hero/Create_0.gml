/// @description Create parts
var torso = instance_create(x,y,obj_hero_torso);
var head = instance_create(x,y,obj_hero_head);
head.parent = id;
torso.parent = id;
head.depth = depth - 1;
torso.depth = depth - 1;

///Create variables
global.isHeroMoving = false;
global.isHeroAttacking = false;

