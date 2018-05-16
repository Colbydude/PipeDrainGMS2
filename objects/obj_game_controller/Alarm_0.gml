/// @description Drain the pipes
if (drain >= board_height) {
    alarm[1] = 5;
    drain = 0;
}
else {
    for (xx = 0; xx < board_width; xx += 1) {
        piece = get_square(xx, drain);
        piece.filled = false;
    }

    drain += 1;
    alarm[0] = 5;
}
