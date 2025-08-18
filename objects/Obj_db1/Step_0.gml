if (instance_exists(target)) {
       // Direção para o player
    var dir = point_direction(x, y, target.x, target.y);

    // Movimento em direção ao player
    var dx = lengthdir_x(db1_speed, dir);
    var dy = lengthdir_y(db1_speed, dir);
    move_and_collide(dx, dy, Obj_wall);
}

// Destruir se sair da tela
if (y > room_height + sprite_height) {
    instance_destroy();
}