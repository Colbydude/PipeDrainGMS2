/// @description Check if the specified piece is connected to another piece.
/// @param piece
/// @param connector
function has_connector(piece, connector) {
	if (string_count(connector, piece.type) > 0) {
	    return true;
	}

	return false;
}
