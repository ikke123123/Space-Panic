global.backgroundSpeed = 8;
layer_vspeed("Background",global.backgroundSpeed);
yStart = -1080;

var file = ini_open("highscores.ini");
global.highScore = ini_read_real("Save","value", 0);
file = ini_close();

scoreSaved = false;

audio_play_sound(sMusic,0,true);
audio_play_sound(sGameBegin,0,false);