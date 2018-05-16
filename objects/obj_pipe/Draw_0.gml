/// @description Draw the pipe.
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(x, y, type);

// Set image_index from the type.
switch (type) {
    case "Left,Right":
        image_index = 0;
    break;
    case "Up,Down":
        image_index = 1;
    break;
    case "Left,Up":
        image_index = 2;
    break;
    case "Up,Right":
        image_index = 3;
    break;
    case "Right,Down":
        image_index = 4;
    break;
    case "Down,Left":
        image_index = 5;
    break;
    case "Empty":
        image_index = 6;
    break;
}

if (filled) {
    draw_sprite(sprite_index, image_index + 7, x, y);
}
else {
    draw_sprite(sprite_index, image_index, x, y);
}

// Draw cracks.
if (crackable && damage > 0) {
    draw_sprite(spr_pipe_cracks, image_index + (damage * 7), x, y);
}