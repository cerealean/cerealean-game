/// @description Set Location
SetLocationToPlayer();

///Determine direction sprite
var chosenHead = global.heroChosenHead;
var action = GetSpriteActionString();
var facing = GetFacingSpriteString();
var spacer = "_";
var spriteKey = "spr_hero"+spacer+chosenHead+spacer+action+spacer+facing;
sprite_index = global.sprites[? spriteKey];

