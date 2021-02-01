if collision_line(x+23, y+16, x+38, y+16, BASKETBALL, false, false) && BASKETBALL.holder = noone && !BASKETBALL.scored {
	BASKETBALL.scored = true;
	global.points++;
	show_debug_message(global.points);
}