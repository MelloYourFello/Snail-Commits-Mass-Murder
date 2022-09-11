var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, oGrass1);
var sprint = keyboard_check(vk_shift);

if (isDead = true){
	if (timer > 0)
{
   timer --;
}
else {
	audio_play_sound(Death, 10, false);
	room_restart();
}
}

xSpeed = xDirection * spd;
ySpeed++;

if (xDirection != 0){
		if (isDead = true){
			image_xscale = image_xscale;
		}
		else image_xscale = xDirection * scale;  
}
if (onTheGround) {
    if (xDirection != 0) { sprite_index = sPlayerR; }
    else { sprite_index = sPlayer; }
    
    if (jump) {
        ySpeed = -15;
		if (isDead = true){
			audio_stop_sound(Jump)
		}
		else audio_play_sound(Jump, 10, false);
    }
} else {
     sprite_index = sPlayerA;
}

if (sprint) { spd = sprintSpd } else {spd = w_spd }

if (place_meeting(x + xSpeed, y, oGrass1)) {
    xSpeed = 0;
	sprite_index = sPlayer;
}

if (place_meeting(x, y, oSpike)) {
    xSpeed = 0;
	sprite_index = sPlayerD;
	isDead = true;
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, oGrass1)) {
    ySpeed = 0;
}

if (place_meeting(x, y, oSpike)) {
    ySpeed = 0;
	sprite_index = sPlayerD;
	isDead = true;
}


y += ySpeed;