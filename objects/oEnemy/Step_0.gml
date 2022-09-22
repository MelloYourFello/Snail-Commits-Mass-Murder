vsp = vsp + grv;

if (place_meeting(x+hsp,y,oDirt1))
{
	while (!place_meeting(x+sign(hsp),y,oDirt1))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

if (place_meeting(x,y+vsp,oDirt1))
{
	while (!place_meeting(x,y+sign(vsp),oDirt1))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

if (!place_meeting(x,y+1,oDirt1))
{
	sprite_index = sHuman;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
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