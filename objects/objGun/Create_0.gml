shoot	= function( _direction ) {
	var _x	= x + lengthdir_x( barrelOffsetX, _direction ) + lengthdir_x( barrelOffsetY, _direction + 90 );
	var _y	= y + lengthdir_y( barrelOffsetX, _direction ) + lengthdir_y( barrelOffsetY, _direction + 90 );
	
	with( instance_create_layer( _x, _y, layer, bullet )) {
		speed		= other.bulletSpeed;
		direction	= _direction;
		image_angle	= _direction;
		
	}
	
}


barrelOffsetX	= 0;
barrelOffsetY	= 0;
bullet			= oBullet;
bulletSpeed		= 17;

gunScale		= 1;
