/// @description Clear the game board and prepare new pieces.
function clear_board() {
	with (obj_pipe) {
	    instance_destroy();
	}

	var xx, yy;
	for (xx = 0; xx < board_width; xx++) {
	    for (yy = 0; yy < board_height; yy++) {
	        piece = instance_create((xx * 32) + 32, (yy * 32) + 96, obj_pipe);
	        piece.type = "Empty";
	        board_pieces[xx, yy] = piece;
	    }
	}
}
