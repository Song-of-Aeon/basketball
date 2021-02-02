if demonscale < 255 {
	demonscale += 5;
}
if talked = true && !instance_exists(io_textbox) {
	image_alpha -= .1;
	if image_alpha <= 0 {
		instance_destroy();
	}
}
image_blend = make_colour_rgb(demonscale, 255, 255);
if place_meeting(x, y, global.me) && !talked {
	talked = true;
	with instance_create_layer(x, y, 2, io_textbox) {
		txt_rule1();
	}
}
