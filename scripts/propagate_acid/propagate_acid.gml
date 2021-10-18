/// @description Fill what we can on the board with acid.
/// @param x
/// @param y
/// @param from_direction
function propagate_acid(x, y, from_direction) {
	var piece, ends, acid_track;

	ends = ds_list_create();

	if ((y >= 0) && (y < board_height) && (x >= 0) && (x < board_width)) {
	    piece = get_square(x, y);

	    if (has_connector(piece, from_direction) && piece.filled == false) {
	        fill_piece(x, y);
	        acid_track = instance_create(x, y, vector2);
	        ds_list_add(acid_tracker, acid_track);
	        ends = get_other_ends(piece, from_direction);

	        for (var k = 0; k < ds_list_size(ends); k ++) {
	            switch (ds_list_find_value(ends, k)) {
	                case "Left":
	                    propagate_acid(x - 1, y, "Right");
	                break;
	                case "Right":
	                    propagate_acid(x + 1, y, "Left");
	                break;
	                case "Up":
	                    propagate_acid(x, y - 1, "Down");
	                break;
	                case "Down":
	                    propagate_acid(x, y + 1, "Up");
	                break;
	            }
	        }
	    }
	}

	ds_list_destroy(ends);
}
