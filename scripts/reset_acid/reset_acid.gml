/// @description Empty all the pieces on the board.
function reset_acid() {
	for (var xx = 0; xx < board_width; xx++) {
	    for (var yy = 0; yy < board_height; yy++) {
	        piece = get_square(xx, yy);
	        piece.filled = false;
	    }
	}
}
