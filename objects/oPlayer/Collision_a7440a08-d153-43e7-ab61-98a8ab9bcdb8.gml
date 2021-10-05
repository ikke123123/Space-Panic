//What the player does when it collides with an enemy
//It will start the counter for the button smashing, the counter for the immume time and it will create the spacebar, and it will enable the global variable global.isHit to kick of several processes
if global.pHealth > -1 {
	if immumeTime < 0 {
		global.isHit = true;
		smashNum = 5;
		immumeTime = 120;
		global.pHealth -= 1;
		instance_destroy(oSpacebar);
		instance_create_depth(960,740,-100,oSpacebar);
	}
} else instance_destroy();