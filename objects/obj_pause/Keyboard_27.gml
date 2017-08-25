/// @description Pause/Unpause

if(global.isPaused){
	instance_activate_all();
	global.isPaused = false;
}
else {
	instance_deactivate_all(true);
	global.isPaused = true;
}
