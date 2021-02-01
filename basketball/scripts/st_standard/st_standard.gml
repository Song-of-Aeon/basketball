function st_standard() {
	/*show_debug_message("start");
	show_debug_message(aerial);
	show_debug_message(y);*/
	if hput != 0 {
	    hspd += hput * acc;
	    hspd = clamp(hspd, -maxhspd, maxhspd);
	}
	if !place_meeting(x, y+8, o_solid)  {
	    vspd += grav;
	    hspd = lerp(hspd, 0, frict/2);
	    aerial = true;
	    acc = .2;
	} else {
	    acc = .3;
	    hspd = lerp(hspd, 0, frict);
	    aerial = false;
	    y = floor(y);
	    vspd = 0;
	}
	if jump && !aerial {
		vspd = jspd;
	}
	if up {
		haim += haimult;
		vaim += vaimult;
		if haim > 5 || vaim > 5 {
			haimult = -haimult;
			vaimult = -vaimult;
		}
	} else {
		haim = 5;
		haimult = -.2;
		vaim = 0;
		vaimult = .2;
	}
	if vspd < 0 {
	    if (jumpr) {
	        vspd = vspd/2;
	    }
	}
	if abs(hspd) < 0.2 && !aerial {
	    hspd = 0;
	}
	image_speed = hspd/10;
	if hput != 0 {
		image_xscale = hput;
	} else {
		image_index = 0;
	}
	c_basiccollision();

	x += hspd;
	y += vspd;
	/*show_debug_message(vspd);
	show_debug_message(aerial);
	show_debug_message("end");*/
}