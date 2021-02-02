function st_withball() {
	if dribble {
		/*if aerial {
			
		} else*/ if up {
			BASKETBALL.holder = noone;
			BASKETBALL.hspd = haim*image_xscale*1;
			BASKETBALL.vspd = -vaim*1.5;
		} else {
			BASKETBALL.holder = noone;
			BASKETBALL.vspd = 1.5;
		}
		actionstate = st_noball;
	}
}