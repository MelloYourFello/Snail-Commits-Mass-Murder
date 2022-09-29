// Inherit the parent event
event_inherited();

superShoot	= shoot;
shoot	= function( _direction ) {
	superShoot( _direction - 20 );
	superShoot( _direction );
	superShoot( _direction + 20 );
	
}
gunScale		= 0.75;
barrelOffsetX	= 20 * gunScale;
barrelOffsetY	= 5	* gunScale;
refire	= 0;

firingdelay = 0;
recoil = 1;
image_xscale = 2;
image_yscale = 2;
scale = abs(image_yscale);