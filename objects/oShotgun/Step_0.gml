x = oPlayer.x;
y = oPlayer.y+25;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0,recoil - 1);

if (refire > 0)
	refire -= 1
	
if (mouse_check_button(mb_left)) && (firingdelay < 0){
	firingdelay = 30;
	recoil = 10;
	ScreenShake(2,10);
	shoot( image_angle + random_range(-3,3));
	with (shoot){
		speed = 25;
		audio_play_sound(Shoot, 1, false);
		direction = other.image_angle + random_range(-3,3);
	}
	with (oPlayer)
	{
		gunkickx = lengthdir_x(5.5, other.image_angle-180);
		gunkicky = lengthdir_y(5.5, other.image_angle-180);
	}
}

x = x - lengthdir_x(recoil,image_angle);

y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1 * scale;
}
else
{
	image_yscale = 1 * scale;
}