/// @description Boot Game.
function boot() {
	// Call this script immediately on boot.
	gml_pragma("global", "boot();");

	// Setup the game.
	init_globals();                 // Create global variables.
	randomize();                    // Make sure RNG is different on every play.
	draw_set_font(global.font);     // Set the global font.
	json_load();                    // Load save data.
}
