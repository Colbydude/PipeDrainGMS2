/// @description Clear the acid tracker list.
function acid_tracker_clear() {
	with (vector2) {
	    instance_destroy();
	}

	ds_list_clear(acid_tracker);
}
