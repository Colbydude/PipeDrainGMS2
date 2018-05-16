/// @description Draw Game Info
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(5, 5, string(global.difficulty));

draw_set_color(c_lime);
draw_set_halign(fa_right);
draw_text(116, 382, string(player_score));
draw_text(116, 399, string(level));
draw_text(234, 382, string(string_format(multiplier, 4, 1)));
draw_text(234, 399, string(moves));