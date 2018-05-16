/// @description Game Runtime
if (!won) {
    // Advance Play Time.
    if (timer_active) {
        play_time += 1;
    }

    // Get Acid Chain.
    reset_acid();

    for (xx = 0; xx < board_width; xx += 1) {
        get_acid_chain(xx);

        if (xx == 0) {
            scoring_chain = instance_number(vector2);

            if (!ds_list_empty(acid_tracker)) {
                var vector;

                vector = ds_list_find_value(acid_tracker, ds_list_size(acid_tracker) - 1);
                last_pipe = get_square(vector.x, vector.y);
            }
            else {
                last_pipe = -1;
            }
        }
        else {
            if (instance_number(vector2) > scoring_chain) {
                scoring_chain = instance_number(vector2);

                var vector;
                vector = ds_list_find_value(acid_tracker, ds_list_size(acid_tracker) - 1);

                last_pipe = get_square(vector.x, vector.y);
            }
        }
    }

    // Check for a complete chain.
    for (xx = 0; xx < board_width; xx += 1) {
        var piece;
        piece = get_square(xx, 7);
        
        if (has_connector(piece, "Down") && piece.filled == true && scoring_chain >= 8 && won == false) {
            timer_active = false;
            won = true;
            alarm[0] = 5;
        }
    }
}