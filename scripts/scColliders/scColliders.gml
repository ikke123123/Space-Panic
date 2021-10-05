//If the current coordinate + the amount of movement that will be applied = a collision it will loop until it is right up against the object
//and the hSpeed will then be set to 0
if place_meeting(x+hSpeed, y, vObject) {
	while !place_meeting(x+sign(hSpeed), y, vObject) x+=sign(hSpeed);
	hSpeed = 0;
}
if place_meeting(x, y+vSpeed, hObject) {
	while !place_meeting(x, y+sign(vSpeed), hObject) y+=sign(vSpeed);
	vSpeed = 0;
}