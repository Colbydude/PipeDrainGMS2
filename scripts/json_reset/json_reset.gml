/// @description Reset the save file.
function json_reset() {
	// Create a DS Map to be converted to JSON.
	var map = ds_map_create();
	ds_map_add(map, "easy_high_level", 0);
	ds_map_add(map, "easy_high_score", 0);
	ds_map_add(map, "easy_play_time", 0);
	ds_map_add(map, "hard_high_level", 0);
	ds_map_add(map, "hard_high_score", 0);
	ds_map_add(map, "hard_play_time", 0);
	ds_map_add(map, "norm_high_level", 0);
	ds_map_add(map, "norm_high_score", 0);
	ds_map_add(map, "norm_play_time", 0);


	// Encode to JSON.
	var json = json_encode(map);

	// Write JSON to file.
	var file = file_text_open_write(working_directory + "pipedrain_save.json");
	file_text_write_string(file, json);
	file_text_close(file);

	// Unload the DS map (to prevent memory leaks).
	ds_map_destroy(map);
}
