//Velocidade de DB1
db1_speed = 1 + global.multiplicador;

//HP de DB1
boss_hp = 100 + (global.multiplicador * 10);
max_hp = 100 + global.multiplicador;

//Dano melee de DB1
db1_damage = 20 + global.multiplicador;

boss_healthbar_width = 100;
boss_healthbar_height = 7;

boss_healthbar_x = 60;
boss_healthbar_y = 70;

//lista de orbs

orb_list = [];

spawned_orbs = false;

target = Obj_player;

//indicador de dano

damage_flash = 0;