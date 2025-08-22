player_speed = 6;

// Status do hp do player

player_hp = 100;
player_maxhp = 100;

//Dimensões da barra de hp do player

healthbar_width = 50;
healthbar_height = 7;

healthbar_x = 20;
heatlhbar_y = 700;

//barra de almas

soul_bar = 50;
soul_stops_usados = 0;

invencivel = false;
invencivel_timer = 0;      // Timer de invencibilidade
invencivel_duracao = 60;   // Duração em frames (60 = 1 segundo)

projectile1_cooldown = 10; // menor valor = mais rápido
projectile1_timer = 0;

dash_distance = 400;         // Total que o dash percorre
dash_duration = 10;          // Quantos frames o dash dura
dash_cooldown = 10;          // Cooldown após o dash

is_dashing = false;
dash_timer = 0;

dash_cooldown_timer = 0;

dash_dx = 0;
dash_dy = 0;