if (hasGun)
{
	mygun = instance_create_layer(x,y,"Gun",oEGun);
	with (mygun)
	{
		owner = other.id;
	}
}
else mygun = noone;