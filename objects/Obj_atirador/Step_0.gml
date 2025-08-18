if (instance_exists(player_obj)) {
    // Distância desejada para parar
    var distancia_minima = 150;

    // Direção e distância até o player
    var dir = point_direction(x, y, player_obj.x, player_obj.y);
    var dist = point_distance(x, y, player_obj.x, player_obj.y);

    // Rotacionar o sprite
    image_angle = dir - 90;
	
	// Atualiza o timer de tiro
	if (shoot_timer > 0) {
		shoot_timer -= 1;
	}

	if (shoot_timer <= 0) {
		// Cria o projétil e define direção e velocidade
		var p = instance_create_layer(x, y, "Instances", Obj_low_projectile);
		p.direction = dir;

		shoot_timer = shoot_cooldown; // reinicia o cooldown
	}

    // Só se move se estiver longe demais
    if (dist > distancia_minima) {
        var dx = lengthdir_x(atirador_speed, dir);
        var dy = lengthdir_y(atirador_speed, dir);
        move_and_collide(dx, dy, Obj_wall);
    }

}

if (y > room_height + sprite_height) {
    instance_destroy();
}