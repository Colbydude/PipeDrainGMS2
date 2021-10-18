/// @description Initializes all global variables.
function init_globals() {
	// Setup----------------------------------------------------------------------
	global.debug = false;                                                       // Debug Mode.
	global.font = font_add_sprite(spr_number_font, ord(" "), false, 1);         // Number Font.
	// Player Stats--------------------------------------------------------------
	global.difficulty = 0;                                                      // The selected difficulty.
	global.easy_high_level = 0;                                                 // Easy High Level.
	global.easy_high_score = 0;                                                 // Easy High Score.
	global.easy_play_time = 0;                                                  // Easy Play Time.
	global.hard_high_level = 0;                                                 // Hard High Level.
	global.hard_high_score = 0;                                                 // Hard High Score.
	global.hard_play_time = 0;                                                  // Hard Play Time.
	global.norm_high_level = 0;                                                 // Normal High Level.
	global.norm_high_score = 0;                                                 // Normal High Score.
	global.norm_play_time = 0;                                                  // Normal Play Time.
}
