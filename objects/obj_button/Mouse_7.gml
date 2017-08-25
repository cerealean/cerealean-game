/// @description Button Actions

switch(action){
	case ButtonAction.NewGame:
		room_goto(rm_test);
		break;
	case ButtonAction.ExitGame:
		game_end();
		break;
}
