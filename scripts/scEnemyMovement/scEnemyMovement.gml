//What to do whenever the Enemy as at any point in movement process
if wait <= 0 {
	//When there is not a wait timer
	if hspeed > 0 {
		//what to do if the enemy moves to the right
		if x+hspeed >= targetB {
			//basically the same as what the collision script does, but then with coordinates
			while x!=targetB x++;
			hspeed = 0;
			wait = waitTime;
		}
	} else if hspeed < 0 {
		//what to do if the enemy moves to the left
		if x+hspeed <= targetA {
			while x!=targetA x--;
			hspeed = 0;
			wait = waitTime;
		}
	} else if x == targetA {
		//start moving from targetA to targetB
		hspeed = 8;
	} else if x == targetB {
		//start moving from targetB to targetA
		hspeed = -8;
	}
}
wait--;

//generating a sprite corresponding to the path the enemy takes
if !sprite_index {
	if targetB - targetA >= 744 sprite_index = sEnemy2;
	else sprite_index = sEnemy1;
}