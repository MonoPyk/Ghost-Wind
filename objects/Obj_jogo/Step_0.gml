// --- Soul Stop ---
if (global.soul_stop && current_time >= global.soul_stop_until) {
    global.soul_stop = false;
}

// --- Definir largura e altura fixas da câmera ---
var cam_width = 840;  // largura da câmera
var cam_height = 560; // altura da câmera

// Base: centraliza no player
var cam_x = Obj_player.x - cam_width / 2;
var cam_y = Obj_player.y - cam_height / 2;

// Limita para não sair da room
cam_x = clamp(cam_x, 0, room_width - cam_width);
cam_y = clamp(cam_y, 0, room_height - cam_height);

// --- Shake ---
if (shake_time > 0) {
    shake_time -= 1;
    var offset_x = irandom_range(-shake_strength, shake_strength);
    var offset_y = irandom_range(-shake_strength, shake_strength);
    cam_x += offset_x;
    cam_y += offset_y;
}

// --- Aplica posição final da câmera ---
camera_set_view_pos(view_camera[0], cam_x, cam_y);
