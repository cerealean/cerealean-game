/// @description Button Actions

switch(action){
	case ButtonAction.NewGame:
		room_goto(rm_test);
		break;
	case ButtonAction.ExitGame:
		game_end();
		break;
	case ButtonAction.ToGameMenu:
		room_goto(rm_game_menu);
		break;
	case ButtonAction.ToGameOptions:
		room_goto(rm_game_menu_options);
		break;
	default:
		show_error("Menu action not implemented",false);
		break;
}
