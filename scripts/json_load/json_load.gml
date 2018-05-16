/// @description Load the save file.
if (!file_exists(working_directory + "pipedrain_save.json")) {
    json_reset();
}

// Open the JSON file.
var json = "";
var file = file_text_open_read(working_directory + "pipedrain_save.json");

// Read to the end of the file.
while (!file_text_eof(file)) {
    json += file_text_readln(file);
}

file_text_close(file);

// Load variables from the map.
var save_data = json_decode(json);
global.easy_high_level = ds_map_find_value(save_data, "easy_high_level");
global.easy_high_score = ds_map_find_value(save_data, "easy_high_score");
global.easy_play_time = ds_map_find_value(save_data, "easy_play_time");
global.hard_high_level = ds_map_find_value(save_data, "hard_high_level");
global.hard_high_score = ds_map_find_value(save_data, "hard_high_score");
global.hard_play_time = ds_map_find_value(save_data, "hard_play_time");
global.norm_high_level = ds_map_find_value(save_data, "norm_high_level");
global.norm_high_score = ds_map_find_value(save_data, "norm_high_score");
global.norm_play_time = ds_map_find_value(save_data, "norm_play_time");
ds_map_destroy(save_data);