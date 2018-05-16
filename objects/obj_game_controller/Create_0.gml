/// @description Start Game
// Game Data.
multiplier = 1;                     // Score multiplier.
play_time = 0;                      // Play time (in ms).
player_score = 0;                   // Player score.
scoring_chain = 0;                  // Number of connected pipes.
timer_active = false;               // Play time timer active.
total_levels = 0;                   // Total number of levels.
total_moves = 0;                    // Total number of moves.
total_play_time = 0;                // Total time played.
total_score = 0;                    // Total score.

// Board Data.
acid_tracker = ds_list_create();    // Tracker for calculating score and propagating acid.
board_width = 8;                    // Width of the board in pieces.
board_height = 8;                   // Height of the board in pieces.
board_pieces[0, 0] = 0;             // Array for storing the pipe objects.
last_pipe = -1;                     // The last pipe in the chain.

// Level Data.
drain = 0;                          // Drain level once the player has won.
level = 1;                          // Current Level the player is on.
moves = 0;                          // Number of times the player has rotated a piece.
won = false;                        // Whether or not the level has been won.

// Start.
next_level(true);