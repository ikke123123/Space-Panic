//This enables the smashing system
if global.isHit == true 
{
	if key_action {
		if smashNum > 0 {
			smashNum --;
		} else global.isHit = false;
	}
}

//This manages the sprites for the shield animation
if immumeTime >= 0 sprite_index = sPlayerShielded;
else sprite_index = sPlayer;

//This manages sound for when the player is being hit
if immumeTime >= 0 && !audio_is_playing(sShield) audio_play_sound(sShield,0,false);
if immumeTime < 0 audio_stop_sound(sShield);

immumeTime --;