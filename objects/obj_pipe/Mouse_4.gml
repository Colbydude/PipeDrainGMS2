/// @description Rotate Pipe
if (type != "Empty" && obj_game_controller.timer_active) {
    // Change type.
    switch (type) {
        case "Left,Right":
            type = "Up,Down";
        break;
        case "Up,Down":
            type = "Left,Right";
        break;
        case "Left,Up":
            type = "Up,Right";
        break;
        case "Up,Right":
            type = "Right,Down";
        break;
        case "Right,Down":
            type = "Down,Left";
        break;
        case "Down,Left":
            type = "Left,Up";
        break;
    }

    // Add damage if the pipe is crackable.
    if (crackable == true) {
        if (damage < 4) {
            damage += 1;
        }
        else {
            type = "Empty";
            filled = 0;
        }
    }

    // Increment moves.
    obj_game_controller.moves += 1;
    if (obj_game_controller.moves > 99999) {
        obj_game_controller.moves = 99999;
    }
}