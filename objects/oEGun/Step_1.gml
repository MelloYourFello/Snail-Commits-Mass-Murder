x = owner.x+12;
y = owner.y+10;

image_xscale = 1.5;
image_yscale = 1.5;

if (instance_exists(oPlayer))
{
	if (oPlayer.x < x) image_yscale = -image_yscale;
	if (point_distance(oPlayer.x,oPlayer.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
		if (countdown <= 0)
		{
			countdown = countdownrate;
			if (!collision_line(x,y,oPlayer.x,oPlayer.y,oGrass1,false,false))
			{
				audio_sound_pitch(Shoot,choose(0.8,1.0,1.2));
				audio_play_sound(Shoot, 1, false);
				with (instance_create_layer(x,y,"Bullets",oEBullet))
				{
					speed = 15;
				
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;
				}
			}
		}
	}
}