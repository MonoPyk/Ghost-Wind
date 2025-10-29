// --- Fade in da tela ---
if (image_alpha < 1) {
    image_alpha += 0.01;
}

// Quando o fade completar
if (image_alpha >= 1) {
    // Para o spawn de inimigos
    with (Obj_spawner) {
        instance_destroy();
    }

    // Digitação do nome (tudo de uma vez)
    player_name = keyboard_string;

    // Limita o tamanho máximo do nome
    if (string_length(player_name) > max_name_length) {
        player_name = string_copy(player_name, 1, max_name_length);
    }

    // Confirmar entrada e enviar score
    if (keyboard_check_pressed(vk_enter) && string_length(player_name) > 0) {

        // --- Envia para o Firebase diretamente ---
        var firebase_base_url = "https://ghostwindleaderboard-default-rtdb.firebaseio.com/leaderboard/";
        var data = "{ \"score\": " + string(global.score) + " }";
        var url = firebase_base_url + player_name + ".json";

        // Envia usando network_http_request (substitui http_put_string)
        request = http_post_string(url, data);

        show_message("Score enviado com sucesso!");
        keyboard_string = "";
        room_goto(rm_menu);
    }
}
