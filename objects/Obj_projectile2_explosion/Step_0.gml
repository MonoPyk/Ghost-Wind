// Usa o índice diretamente (caso o nome do objeto esteja causando conflito)
var alvo = Obj_inimigo;

var _x = x;
var _y = y;
var _raio = raio;
var _dano = dano;

var lista = ds_list_create();

// Usa uma checagem circular, baseada em posição (não na máscara da explosão)
collision_circle_list(_x, _y, _raio, Obj_inimigo, false, true, lista, false);

for (var i = 0; i < ds_list_size(lista); i++) {
    var inimigo = lista[| i];

    if (variable_instance_exists(inimigo, "hp")) {
        inimigo.hp -= _dano;
        if (inimigo.hp <= 0) {
            with (inimigo) {
                instance_destroy();
                global.score += 100;
            }
        }
    }
}

ds_list_destroy(lista);

// Efeito de câmera
var jogo = instance_find(Obj_jogo, 0);
if (jogo != noone) {
    jogo.shake_time = 10;
    jogo.shake_strength = 8;
}

// Destrói a explosão após 1 frame (pode trocar por alarme se quiser animar)
instance_destroy();
