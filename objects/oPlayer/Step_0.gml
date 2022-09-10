var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, oGrass1);
var sprint = keyboard_check(ord(vk_space))

xSpeed = xDirection * spd;
ySpeed++;

if (xDirection != 0) image_xscale = xDirection * 4;

if (onTheGround) {
    if (xDirection != 0) { sprite_index = sPlayerR; }
    else { sprite_index = sPlayer; }
    
    if (jump) {
        ySpeed = -15;
        audio_play_sound(Jump, 10, false);
    }
} else {
     sprite_index = sPlayerA;
}

if (sprint) {
    spd = abs((xDirection*w_spd) - (sprint*sprintSpd));
}
else {spd = w_spd;}

if (place_meeting(x + xSpeed, y, oGrass1)) {
    xSpeed = 0;
	sprite_index = sPlayer;
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, oGrass1)) {
    ySpeed = 0;
}

y += ySpeed;