if (done == 0)
{
	vsp = vsp + grv;

	if (place_meeting(x+hsp,y,oGrass1))
	{
		while (!place_meeting(x+sign(hsp),y,oGrass1))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	if (place_meeting(x,y+vsp,oGrass1))
	{
		if (vsp > 0){
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x,y+sign(vsp),oGrass1))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}
