/// @description GetFacingSpriteString()
var dir = DetermineFacingDirection(obj_hero.direction);
switch(dir){
    case Facing.Up:
        facing = "up"
        break;
    case Facing.UpLeft:
        facing = "up_left";
        break;
    case Facing.UpRight:
        facing = "up_right";
        break;
    case Facing.Down:
        facing = "down";
        break;
    case Facing.DownRight:
        facing = "down_right";
        break;
    case Facing.DownLeft:
        facing = "down_left";
        break;
    case Facing.Left:
        facing = "left";
        break;
    case Facing.Right:
        facing = "right";
        break;
}

return facing;
