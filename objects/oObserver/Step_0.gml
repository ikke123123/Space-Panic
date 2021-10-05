script_execute(scEnemyGenerator());
if instance_exists(oPlayer) 
{
	score++;
} else if score > global.highScore
{
	var file = ini_open("highscores.ini");
	ini_write_real("Save","value",score);
	file = ini_close();
	global.highScore = score;
}

global.backgroundSpeed = clamp(log2(score),5,100);
layer_vspeed("Background",global.backgroundSpeed);