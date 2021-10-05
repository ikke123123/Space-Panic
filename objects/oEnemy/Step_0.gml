//manages enemy movement
script_execute(scEnemyMovement())

//if the enemy gets off-scream it will destroy it
if y >= 1080 instance_destroy();

//managing the speed, so it's equal to the background image movement
vspeed = global.backgroundSpeed;