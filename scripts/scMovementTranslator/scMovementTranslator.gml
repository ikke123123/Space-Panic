//Only allows the player to move when it didn't got hit and the button smashing has not been completed
if global.isHit == false 
{
	x = x + hSpeed;
	y = y + vSpeed;
}