/// @description Draw Scores and Highest Levels.
draw_set_color(c_lime);
draw_set_halign(fa_right);
draw_text(306, 209, string(global.easy_high_score));
draw_text(306, 232, string(global.easy_high_level));
draw_text(306, 265, string(global.norm_high_score));
draw_text(306, 288, string(global.norm_high_level));
draw_text(306, 321, string(global.hard_high_score));
draw_text(306, 344, string(global.hard_high_level));