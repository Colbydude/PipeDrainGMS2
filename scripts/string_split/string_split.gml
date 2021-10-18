/// @description Split a string into a list by the given token.
/// @param str
/// @param token
/// @param ignore_null
function string_split(str, token, ignore_null) {
	/*
	**  Usage:
	**      string_split(str,token,ignore_null)
	**
	**  Arguments:
	**      str         a string with a certain token seperating the
	**                  desired substrings,  string
	**      token       a string (usually a single variable) representing
	**                  the character(s) that str is seperated by,  string
	**      ignore_null whether or not to include empty strings if, for
	**                  example, the token was repeated,  bool (true/false)
	**
	**  Returns:
	**      a ds_list containing all substrings taken from str which
	**      were seperated by token.
	**
	**  Example:
	**      string_parse("cat|dog|house|bee", "|", true);
	**      returns a ds_list containing "cat", "dog", "house", and "bee"
	**
	**  GMLscripts.com
	*/
	var list, tlen, temp;

	list = ds_list_create();
	tlen = string_length(token);

	while (string_length(str) != 0) {
	    temp = string_pos(token, str);

	    if (temp) {
	        if (temp != 1 || !ignore_null) {
	            ds_list_add(list, string_copy(str, 1, temp - 1));
	        }

	        str = string_copy(str, temp + tlen, string_length(str));
	    }
	    else {
	        ds_list_add(list, str);
	        str = "";
	    }
	}

	return list;
}
