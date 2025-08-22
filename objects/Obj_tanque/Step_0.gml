if (global.soul_stop) exit;

if (instance_exists(player_obj)) {
       // Direção para o player
    var dir = point_direction(x, y, player_obj.x, player_obj.y);

    // Rotacionar o sprite
    image_angle = dir - 90;

    // Movimento em direção ao player
    var dx = lengthdir_x(tanque_speed, dir);
    var dy = lengthdir_y(tanque_speed, dir);
    move_and_collide(dx, dy, Obj_wall);
}


// Destruir se sair da tela
if (y > room_height + sprite_height) {
    instance_destroy();
}