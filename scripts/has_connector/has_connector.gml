/// @description Check if the specified piece is connected to another piece.
/// @param piece
/// @param connector
var piece, connector;

piece = argument0;
connector = argument1;

if (string_count(connector, piece.type) > 0) {
    return true;
}

return false;
