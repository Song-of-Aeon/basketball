function st_withball() {
	if dribble {
		if aerial {
			
		} else if up {
			BASKETBALL.holder = noone;
			BASKETBALL.hspd = haim*image_xscale;
			BASKETBALL.vspd = -vaim;
		} else {
			BASKETBALL.holder = noone;
			BASKETBALL.vspd = 1;
		}
		actionstate = st_noball;
	}
}