/// @description Generate new board pieces.
function generate_new_pieces() {
	var xx, yy;
	for (xx = 0; xx < board_width; xx++) {
	    for (yy = 0; yy < board_height; yy++) {
	        piece = get_square(xx, yy);

	        if (piece.type == "Empty") {
	            random_piece(xx, yy);
	        }
	    }
	}
}
