/// @description Get the acid chain and fills the appropriate pieces.
/// @param x
function get_acid_chain(x) {
	acid_tracker_clear();
	propagate_acid(x, 0, "Up");
}
