// Declaring Variables
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A")); 
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, oGrass1);
var sprint = keyboard_check(vk_shift);

// Dead Showcase
if (isDead = true){
	if (timer > 0)
{
   timer --;
}
else {
	audio_play_sound(Death, 10, false);
	room_restart();
	global.kills -= global.killsthisroom;
}
}


// Movement
xSpeed = (xDirection * spd) + gunkickx;
gunkickx = 0;

ySpeed = ySpeed + gunkicky;
gunkicky = 0;
ySpeed++;

canJump -= 1;
if (canJump > 0) && (jump) {
		ySpeed = -15;
		canJump = 0;
		if (isDead = true){
			audio_stop_sound(Jump)
		}
		else audio_play_sound(Jump, 10, false);
}

// Animation
if (onTheGround) {
	canJump = 10;
    if (xDirection != 0) { sprite_index = sPlayerR; }
    else { sprite_index = sPlayer; }
} else {
     sprite_index = sPlayerA;
}

// Sprinting
if (sprint) { spd = sprintSpd } else {spd = w_spd }

// Collision
if (place_meeting(x + xSpeed, y, oGrass1)) {
    xSpeed = 0;
	sprite_index = sPlayer;
}

if (place_meeting(x, y, oSpike)) {
    KillPlayer();
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, oGrass1)) {
    ySpeed = 0;
}

y += ySpeed;