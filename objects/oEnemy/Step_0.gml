vsp = vsp + grv;

if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oGrass1))
{
	hsp = -hsp;
}

if (place_meeting(x+hsp,y,oGrass1))
{
	while (!place_meeting(x+sign(hsp),y,oGrass1))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

if (place_meeting(x,y+vsp,oGrass1))
{
	while (!place_meeting(x,y+sign(vsp),oGrass1))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (!place_meeting(x,y+1,oGrass1))
{
	grounded = false;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sHuman;
	}
	else
	{
		sprite_index = sHumanR;
	}
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;