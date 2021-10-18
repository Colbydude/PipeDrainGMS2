/// @description Generate a new random piece.
/// @param x
/// @param y
function random_piece(x, y) {
	var piece, roll, type, c_roll;

	piece = get_square(x, y);

	// Set the type.
	roll = floor(random(6));
	switch (roll)
	{
	    case 0:
	        type = "Left,Right";
	    break;
	    case 1:
	        type = "Up,Down";
	    break;
	    case 2:
	        type = "Left,Up";
	    break;
	    case 3:
	        type = "Up,Right";
	    break;
	    case 4:
	        type = "Right,Down";
	    break;
	    case 5:
	        type = "Down,Left";
	    break;
	    default:
	        type = "Left,Right";
	    break;
	}

	piece.type = type;

	// Set whether it's crackbale or not.
	if (global.difficulty == 1) {
	    c_roll = floor(random(2));
    
	    if (c_roll >= 1) {
	        piece.crackable = true;
	    }
	}
	else if (global.difficulty == 2) {
	    piece.crackable = true;
	}
}
