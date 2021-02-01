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
	hspd = -hspd/1.1;
}

if place_meeting(x, y + vspd, o_solid) {
	while !place_meeting(x, y + sign(vspd), o_solid) {
	    y += sign(vspd);
	}
	vspd = -vspd/1.1;
}
x += hspd;
y += vspd;