/// @description Get the other ends of the specified piece.
/// @param  piece
/// @param  starting_end
var piece, starting_end, ends;

piece = argument0;
starting_end = argument1;

opposites = ds_list_create();
ends = string_split(piece.type, ",", false);

for (var i = 0; i < ds_list_size(ends); i++) {
    var value;
    value = ds_list_find_value(ends, i);

    if (value != starting_end) {
        ds_list_add(opposites, value);
        value = "";
    }
}

return opposites;