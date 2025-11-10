levit_offset = 0;
levit_speed = 0.006; // velocidade da levitação
levit_amp = 2;      // amplitude (o quanto ele sobe/desce)

score_x = 683;
score_y = 384;

// --- URL base do Firebase ---
firebase_base_url = "https://ghostwindleaderboard-default-rtdb.firebaseio.com/leaderboard";

// --- Variáveis de exibição ---
texto_titulo   = "🏆 Ranking Global 🏆";
texto_top5     = "Carregando...";
texto_player   = "";
texto_posicao  = "";

// --- Estrutura para armazenar os dados do ranking ---
leaderboard = [];

// --- Nome e score do jogador atual ---
if (variable_global_exists("player_name")) {
    player_name = global.player_name;
} else {
    player_name = "Desconhecido";
}

if (variable_global_exists("score")) {
    player_score = global.score;
} else {
    player_score = 0;
}

// --- Fazer requisição ao Firebase ---
// "print=pretty" e "format=export" evitam resposta gzip (GameMaker não entende gzip)
var url = firebase_base_url + ".json?print=pretty&format=export";
http_get(url);
