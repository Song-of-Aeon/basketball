if holder != noone {
	BASKETBALL.x = holder.x;
	BASKETBALL.y = holder.y;
	hspd = holder.hspd;
	scored = false;
} else {
	vspd += grav;
	image_angle += hspd;
}
if place_meeting(x + hspd, y, o_solid) {
	var i = 0;
	while !place_meeting(x + sign(hspd), y, o_solid) {
	    x += sign(hspd);
	    i++;
	    if i > sprite_width { break; } 
	}
	hspd = -hspd/1.2;
}

if place_meeting(x, y + vspd, o_solid) {
	while !place_meeting(x, y + sign(vspd), o_solid) {
	    y += sign(vspd);
	}
	if abs(vspd) > .4 {
		vspd = -vspd/1.3;
	} else {
		vspd = 0;
	}
}
x += hspd;
y += vspd;

if global.points = global.presence*5+5 {
	global.presence++;
	instance_create_layer(600, 362, 2, o_arrivalfx);
}