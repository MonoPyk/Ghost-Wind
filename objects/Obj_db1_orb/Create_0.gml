//Velocidade da orb
orb_speed = 15 + global.multiplicador;

// Tempo de espera inicial
spawn_delay = 60; // 1 segundo se room_speed = 60
state = "spawn_delay";

// Distância mínima para mudar do "chasing" para "shooting"
min_dist = 200; // pode ajustar

// Direção travada quando mudar para "shooting"
locked_dir = 0;

//Dano dos orbs
orb_damage = 10 + global.multiplicador;

//HP dos orbs
orb_hp = 20;

//Alvo do boss (player)
target = Obj_player;

//caracteristicas do sprite do orb
parent_boss = noone;

sprite_index = db1_orb;
image_angle = 0;
image_xscale = 1;
image_yscale = 1;
image_blend = c_white;

