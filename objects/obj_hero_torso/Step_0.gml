/// @description Set Location
SetLocationToPlayer();

///Determine direction sprite
var chosenOutfit = global.heroChosenOutfit;
var action = GetSpriteActionString();
var facing = GetFacingSpriteString();
var spacer = "_";
var spriteKey = "spr_hero"+spacer+chosenOutfit+spacer+action+spacer+facing;
sprite_index = global.sprites[? spriteKey];

