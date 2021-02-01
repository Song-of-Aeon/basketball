function st_noball() {
	if dribble && place_meeting(x, y, BASKETBALL) {
		BASKETBALL.holder = id;
		actionstate = st_withball;
	}
}