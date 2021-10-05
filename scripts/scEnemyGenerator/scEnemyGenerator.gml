//generating variables for repeat loops
var i = 0,f = 0,d = 0;

//Whenever there is no enemy, start generating enemies
if !instance_exists(oEnemy) {
	gen = floor(random(5));
	
	//for a Semi random wait time and start/direction so as to not make it seem mundane
	randomize();
	var ranWait = round(random(90));
	var ranDirection = round(random(1));
	
	if gen == 0 {
		//create 2 rows that move horizontally
		repeat(2)
		{
			repeat(10)
			{
				var this = instance_create_layer(0,(i*-156+yStart),"Instances",oEnemy);
				with (this) {
						targetA = 64+896*f;
						targetB = 800+896*f;
						wait = 100-i*10;
						waitTime = 60;
						if ranDirection = 1 x = targetA else x = targetB;
				}
				i++;
			}
			f++;
			i = 0;
		}
	}
	
	if gen == 1 {
		//Create 4 rows that move horizontally in countering directions
		repeat (2) 
		{
			repeat(2)
			{
				repeat(5) {
					var this = instance_create_layer(0,((yStart-i*156)-d*782),"Instances",oEnemy);
					with (this) {
							targetA = 156+156*f;
							targetB = 900+156*f;
							wait = ranWait;
							waitTime = 0;
							if ranDirection = 1 {
								if i == 0 x = targetA else x = targetB;
							} else 
							{
								if i == 1 x = targetA else x = targetB;
							}
					}
					f++;
				}
				i++;
				f = 0;
			}
			d++;
			i = 0;
		}
	}
	
	if gen == 2	{
		//this is a sort of frankenstein of what gen 3 and gen 1 are
		repeat (2)
		{
			repeat(2)
			{
				var this = instance_create_layer(0,((yStart-i*156)-f*624),"Instances",oEnemy);
					with (this) {
						targetA = 64;
						targetB = 1696;
						wait = (ranWait) + 60;
						waitTime = 60;
						if ranDirection = 1 {
							if i == 0 x = targetA else x = targetB;
						} else 
						{
							if i == 1 x = targetA else x = targetB;
						}
					}
				i++
			}
			i = 0;
			repeat(2)
			{
				var this = instance_create_layer(0,((yStart-468)-f*624),"Instances",oEnemy);
				with (this) {
					targetA = 64+i*896;
					targetB = 800+i*896;
					wait = (ranWait) + 90;
					waitTime = 60;
					if ranDirection = 1 {
						if i == 0 x = targetA else x = targetB;
					} else 
					{
						if i == 1 x = targetA else x = targetB;
					}
				}
				i++
			}
			i = 0;
			f++;
		}
	}
	
	if gen == 3 {
		//creates rows of enemies that move to the middle of the screen
		repeat(3)
		{
			repeat(2)
			{
				repeat (2) {
					var this = instance_create_layer(0,(yStart-f*156)-d*312,"Instances",oEnemy);
					with (this) {
						targetA = 64+i*896;
						targetB = 800+i*896;
						wait = (ranWait) + 0;
						waitTime = 30;
						if i == 0 x = targetA else x = targetB;
					}
					i++
				}
				f++
				i = 0;
			}
			d++;
		}
	}
}