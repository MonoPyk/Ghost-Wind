if (shake_time > 0) {
    shake_time -= 1;

    var offset_x = irandom_range(-shake_strength, shake_strength);
    var offset_y = irandom_range(-shake_strength, shake_strength);

    // Guarda posição original no primeiro frame de shake
    if (shake_time == shake_strength * 2) {
        view_original_x = view_xview[0];
        view_original_y = view_yview[0];
    }

    // Aplica deslocamento
    camera_set_view_pos(view_camera[0], view_original_x + offset_x, view_original_y + offset_y);
}
else {
    // Restaura a posição original
    camera_set_view_pos(view_camera[0], view_original_x, view_original_y);
}
