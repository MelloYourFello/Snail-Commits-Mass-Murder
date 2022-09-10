var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, oGrass1);
var sprint = keyboard_check(vk_shift)


xSpeed = xDirection * spd;
ySpeed++;
if (sprint) { spd = sprintSpd } else {spd = w_spd }

if (onTheGround) {
    // if (xDirection != 0) { sprite_index = }
    // else { sprite_index = }
    
    if (jump) {
        ySpeed = -15;
        audio_play_sound(Jump, 10, false);
    }
} else {
    // sprite_index =
}

if (place_meeting(x + xSpeed, y, oGrass1)) {
    xSpeed = 0;
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, oGrass1)) {
    ySpeed = 0;
}

y += ySpeed;