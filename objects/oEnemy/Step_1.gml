if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,oEDead))
	{
		audio_play_sound(EnemyDeath,10,false)
		image_yscale = sign(hsp) * 2;
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) != 0) image_xscale = 2;
	}
	if (instance_exists(oPlayer))
	{
		global.kills++;
		global.killsthisroom++;
		with (oGame) killtextscale = 2;
	}
	with (mygun) instance_destroy();
	instance_destroy();
}