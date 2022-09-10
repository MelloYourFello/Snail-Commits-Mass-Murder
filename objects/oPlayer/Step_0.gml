// Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate Movement
var move = key_right - key_left;

hsp = move * walkspd;

vsp = vsp + grv;

if (place_meeting(x,y+1,oGrass1)) && (key_jump)
{
	vsp = -7;
	audio_play_sound(Jump, 10, false);
}

// Horizontal Collision
if (place_meeting(x+hsp,y,oGrass1))
{ 
	while (!place_meeting(x+sign(hsp),y,oGrass1))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,oGrass1))
{
	while (!place_meeting(x,y+sign(vsp),oGrass1))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}


y = y + vsp;