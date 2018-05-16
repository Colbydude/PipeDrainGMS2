/// @description Load the save file.
// -------------------------------------------
// Create a DS Map to be converted to JSON.
var map = ds_map_create();
ds_map_add(map, "easy_high_level", global.easy_high_level);
ds_map_add(map, "easy_high_score", global.easy_high_score);
ds_map_add(map, "easy_play_time", global.easy_play_time);
ds_map_add(map, "hard_high_level", global.hard_high_level);
ds_map_add(map, "hard_high_score", global.hard_high_score);
ds_map_add(map, "hard_play_time", global.hard_play_time);
ds_map_add(map, "norm_high_level", global.norm_high_level);
ds_map_add(map, "norm_high_score", global.norm_high_score);
ds_map_add(map, "norm_play_time", global.norm_play_time);

// Encode to JSON.
var json = json_encode(map);

// Write JSON to file.
var file = file_text_open_write(working_directory + "pipedrain_save.json");
file_text_write_string(file, json);
file_text_close(file);

// Unload the DS map (to prevent memory leaks).
ds_map_destroy(map);