/// Obj_game_over - Create Event

image_alpha = 0;

// Nome que o jogador vai digitar
player_name = "";
max_name_length = 12; // por exemplo
keyboard_string = ""; // garante que começa vazio


// Mapa para registrar teclas já processadas
key_pressed = ds_map_create();

sent_score = false; // variável de controle para evitar múltiplos envios

///////////////////////////////////////////////////

//firebase

/// OBJ_FIREBASE - CREATE EVENT

/// Função encode_string simples
function encode_string(str) {
    // Substitui espaços por %20 (mínimo necessário para URLs)
    return string_replace_all(str, " ", "%20");
}

player_name = "";
player_score = 0;

/// OBJ_FIREBASE - CREATE
firebase_base_url = "https://ghostwindleaderboard-default-rtdb.firebaseio.com/";
leaderboard = [];

// Função para enviar score

// Função para pegar leaderboard
function get_leaderboard() {
    var url = firebase_base_url + ".json";
    http_get(url);
}