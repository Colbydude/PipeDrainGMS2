/// @description Fill the specified piece.
/// @param x
/// @param y
function fill_piece(x, y) {
	piece = get_square(x, y);
	piece.filled = true;
}
