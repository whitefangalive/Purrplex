draw_self();
draw_set_font(Talkco);

if (spr_icon != noone) {
	draw_sprite(spr_icon, 0, x, y);
}

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
 
draw_text(x, y, text);