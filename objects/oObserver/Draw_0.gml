draw_set_font(f8BitWonder);

//Draw Hearts
var i = 32;
repeat (global.pHealth)
{
	draw_sprite(sHeart,0,i,1056);
	i += 160;
}

//Draw Game Over Screen
if global.pHealth == -1 {
	draw_sprite(sGameOver,0,0,0);
}

draw_text(16,16,"Highscore: " + string(global.highScore));
draw_text(16,46,"Score: " + string(score));