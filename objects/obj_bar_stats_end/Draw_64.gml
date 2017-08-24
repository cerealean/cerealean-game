/// @description Draw Health & Mana

//Stats end (left)
draw_sprite(spr_bar_stats_end,-1,x,y);

//Draw health sprites
var healthChunks = health / chunkSize;
var maxHealthChunks = global.maxHealth / chunkSize;
var guiHealthX = statsEndWidth;
var guiHealthY = guiHeight - statsEndHeight + 25;
var index;
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
guiHealthX += healthEndWidth;
draw_text(guiHealthX,guiHealthY-10,string(healthPercentage) + "%")