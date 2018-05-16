/// @description Go to the next level and add scores, or start a new game.
/// @param is_new_game
var new;
new = argument0;

// If we're not starting a new game.
if (!new) {
    // Add the score.
    player_score += round(scoring_chain * multiplier);
    if (player_score > 999999) {
        player_score = 999999;
    }

    // Add the multiplier.
    if (moves <= 15) {
        switch (global.difficulty) {
            case 0:
                multiplier += 0.5;
            break;
            case 1:
                multiplier += 1;
            break;
            case 2:
                multiplier += 1.5;
            break;
            default:
                multiplier += 0.5;
            break;
        }

        if (multiplier > 99) {
            multiplier = 99;
        }
    }

    // Set the high scores.
    switch (global.difficulty) {
        case 0:
            if (player_score > global.easy_high_score) {
                global.easy_high_score = player_score;
            }
            if (level > global.easy_high_level) {
                global.easy_high_level = level;
            }

            global.easy_play_time += play_time;
        break;
        case 1:
            if (player_score > global.norm_high_score) {
                global.norm_high_score = player_score;
            }
            if (level > global.norm_high_level) {
                global.norm_high_level = level;
            }

            global.norm_play_time += play_time;
        break;
        case 2:
            if (player_score > global.hard_high_score) {
                global.hard_high_score = player_score;
            }
            if (level > global.hard_high_level) {
                global.hard_high_level = level;
            }

            global.hard_play_time += play_time;
        break;
        default:
            if (player_score > global.easy_high_score) {
                global.easy_high_score = player_score;
            }
            if (level > global.easy_high_level) {
                global.easy_high_level = level;
            }

            global.easy_play_time += play_time;
        break;
    }

    level++;
    total_levels++;
    total_score += player_score;
    total_play_time += play_time;
    total_moves += moves;

    // Save the game.
    json_save();
}

// Reset board.
timer_active = true;
moves = 0;
clear_board();
generate_new_pieces();
