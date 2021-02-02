draw_set_halign(fa_center);
draw_text(320, 240, global.points);
if !instance_exists(io_textbox) {
	var i;
	for (i=0; i<global.rulecount; i++) {
		draw_set_font(ft_stika);
		draw_set_halign(fa_left);
		draw_set_colour(c_white);
		draw_text(80, 80+20*i, rule[i+1]);
	}
}
draw_self();