draw_sprite(spr_bar_stats_end,-1,x,y);
var healthChunks = health / 10;
var maxHealthChunks = global.maxHealth / 10;
var guiHealthX = statsEndWidth;
var guiHealthY = display_get_gui_height() - statsEndHeight + 24;
var index = 0;
var healthPercentage = (health / global.maxHealth) * 100;
for(index = 0; index < healthChunks; index++){
	draw_sprite(spr_bar_health_fill,-1,guiHealthX,guiHealthY);
	guiHealthX += fillWidth;
}
if(maxHealthChunks > healthChunks){
	var chunkDifference = maxHealthChunks - healthChunks;
	for(index = 0; index < chunkDifference; index++){
		draw_sprite(spr_bar_no_fill,-1,guiHealthX,guiHealthY);
		guiHealthX += fillWidth;
	}
}
draw_sprite(spr_bar_health_end,-1,guiHealthX,guiHealthY);
guiHealthX += sprite_get_width(spr_bar_health_end);
draw_text(guiHealthX,guiHealthY,string(healthPercentage) + "%")