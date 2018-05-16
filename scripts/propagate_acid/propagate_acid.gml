/// @description Fill what we can on the board with acid.
/// @param x
/// @param y
/// @param from_direction
var xx, yy, from_direction, piece, ends, acid_track;

xx = argument0;
yy = argument1;
from_direction = argument2;

ends = ds_list_create();

if ((yy >= 0) && (yy < board_height) && (xx >= 0) && (xx < board_width)) {
    piece = get_square(xx, yy);

    if (has_connector(piece, from_direction) && piece.filled == false) {
        fill_piece(xx, yy);
        acid_track = instance_create(xx, yy, vector2);
        ds_list_add(acid_tracker, acid_track);
        ends = get_other_ends(piece, from_direction);

        for (var k = 0; k < ds_list_size(ends); k ++) {
            switch (ds_list_find_value(ends, k)) {
                case "Left":
                    propagate_acid(xx - 1, yy, "Right");
                break;
                case "Right":
                    propagate_acid(xx + 1, yy, "Left");
                break;
                case "Up":
                    propagate_acid(xx, yy - 1, "Down");
                break;
                case "Down":
                    propagate_acid(xx, yy + 1, "Up");
                break;
            }
        }
    }
}

ds_list_destroy(ends);
