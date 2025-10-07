atirador_speed = 1 + global.multiplicador;

shoot_timer = 0;         // Contador de tempo entre tiros
shoot_cooldown = 120 - (global.multiplicador * 5);     // Tempo entre tiros (60 frames = 1 segundo)

hp = 2 + global.multiplicador;
atirador_max_hp = 10;

player_obj = Obj_player; 

//indicador de dano

damage_flash = 0;