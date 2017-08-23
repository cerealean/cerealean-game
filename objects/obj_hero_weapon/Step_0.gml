/// @description Set Location
SetLocationToPlayer();

///Determine direction sprite
var chosenWeapon = global.heroChosenWeapon;
if(chosenWeapon == ""){
    sprite_index = -1; //no sprite
}
else {
    var action = GetSpriteActionString();
    var facing = GetFacingSpriteString();
    var spacer = "_";
    var spriteKey = "spr_hero"+spacer+chosenWeapon+spacer+action+spacer+facing;
    sprite_index = global.sprites[? spriteKey];
}

