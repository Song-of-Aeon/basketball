if msgsprite[message_current] != 0 {
    draw_sprite(msgsprite[message_current], msgspriteno[message_current], x, y);
    //sucky that its two arrays ill fix it later
}
//draw_self();
draw_set_halign(fa_center);
draw_set_colour(c_black);
//if choosing = 0 {
    draw_text(320, 400, message_draw);
    //draw_sprite(mugshot, 0, x+4, y+4-48);
/*} else {
    draw_text(x+28, y+8-48, choicesetdraw[0]);
    draw_text(x+28, y+8, choicesetdraw[1]);
    draw_sprite(s_chooser, 0, x+12, y+16-48+(48*(chooser)));
}*/