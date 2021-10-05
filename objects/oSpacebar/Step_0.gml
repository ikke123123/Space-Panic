//Acquiring key inputs
script_execute(scInput());

//Scaling when action key is hit
if key_action {
	image_xscale -= 0.15;
	image_yscale -= 0.15;
	audio_play_sound(sSpaceClick,0,false);
}

//If the action key is spammed sufficiently it will destroy
if global.isHit = false || !instance_exists(oPlayer) instance_destroy();