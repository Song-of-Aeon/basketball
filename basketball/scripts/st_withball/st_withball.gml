function st_withball() {
	if dribble {
		/*if aerial {
			
		} else*/ if up {
			BASKETBALL.holder = noone;
			BASKETBALL.hspd = haim*image_xscale*2;
			BASKETBALL.vspd = -vaim*2;
		} else {
			BASKETBALL.holder = noone;
			BASKETBALL.vspd = 1;
		}
		actionstate = st_noball;
	}
}