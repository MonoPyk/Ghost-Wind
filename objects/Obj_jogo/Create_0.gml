global.soul_stop = false;
global.soul_stop_until = 0;

shake_time = 0;
shake_strength = 0;
view_original_x = 0;
view_original_y = 0;

global.multiplicador = 1;

global.onda = 1;

global.score = 0;

global.player_name = "";

//global.player_name = "";

cam_width = 840;  // largura da câmera
cam_height = 560; // altura da câmera

// Cria a câmera
view_camera[0] = camera_create();
camera_set_view_size(view_camera[0], cam_width, cam_height);

camera_cordx = 0;

camera_cordy = 0;

if (instance_exists(Obj_player)) {
    // Base: centraliza no player
    var cam_x = Obj_player.x - cam_width / 2;
    var cam_y = Obj_player.y - cam_height / 2;

    // Limita para não sair da room
    cam_x = clamp(cam_x, 0, room_width - cam_width);
    cam_y = clamp(cam_y, 0, room_height - cam_height);

    // Aplica posição da câmera
    camera_set_view_pos(view_camera[0], cam_x, cam_y);
}