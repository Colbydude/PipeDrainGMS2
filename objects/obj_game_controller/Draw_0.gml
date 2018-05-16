/// @description Draw Static Pipes
if (won) {
    for (i = 1; i < 9; i += 1) {
        draw_sprite(spr_pipes_normal, 19, 32 * i, 78);  // Top.
        draw_sprite(spr_pipes_normal, 17, 32 * i, 352); // Bottom.
    }
    
    // Bottom ends.
    draw_sprite(spr_pipes_normal, 18, 0, 352);
    draw_sprite(spr_pipes_normal, 18, 288, 352);
}
else {
    for (i = 1; i < 9; i += 1) {
        draw_sprite(spr_pipes_normal, 15, 32 * i, 78);  // Top.
        draw_sprite(spr_pipes_normal, 14, 32 * i, 352); // Bottom.
    }
    
    // Bottom ends.
    draw_sprite(spr_pipes_normal, 16, 0, 352);
    draw_sprite(spr_pipes_normal, 16, 288, 352);
}
