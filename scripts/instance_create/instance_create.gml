/// @description Creates an instance of a given object at a given position on the Objects layer.
/// @param x The x position the object will be created at.
/// @param y The y position the object will be created at.
/// @param obj The object to create an instance of.
function instance_create(x, y, obj) {
	return instance_create_layer(x, y, "Objects", obj);
}
