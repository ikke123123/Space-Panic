hMove = key_right - key_left;
vMove = key_down - key_up;
hSpeed += hMove * moveSpeed;
vSpeed += vMove * moveSpeed;
clamp(hSpeed,-maxSpeed,maxSpeed);
clamp(vSpeed,-maxSpeed,maxSpeed);
hSpeed = hSpeed * frc;
vSpeed = vSpeed * frc;