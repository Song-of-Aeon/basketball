if holder != noone {
	BASKETBALL.x = holder.x;
	BASKETBALL.y = holder.y;
	hspd = holder.hspd;
} else {
	vspd += grav;
	image_angle += hspd;
}
if place_meeting(x+hspd, y+vspd, o_solid) {
	hspd = hspd/1.1;
	vspd = -(vspd/1.1);
	scored = false;
}
x += hspd;
y += vspd;