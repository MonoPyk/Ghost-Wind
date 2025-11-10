if (ds_map_exists(async_load, "result")) {
    var status = async_load[? "status"];
    var result = async_load[? "result"];

    show_debug_message("STATUS: " + string(status));
    show_debug_message("RESULT: " + string(result));

    // Aceita status 0 (Firebase) ou 200 (HTTP)
    if ((status == 200 || status == 0) && result != "") {
        var data = json_parse(result);

        // Se vier dentro de "leaderboard", acessa esse campo
        if (is_struct(data) && variable_struct_exists(data, "leaderboard")) {
            data = data.leaderboard;
        }

        if (!is_struct(data)) {
            texto_top5 = "Erro: dados inválidos recebidos.";
            exit;
        }

        leaderboard = [];

        // Percorre os nomes (campos do struct)
        var nomes = variable_struct_get_names(data);
        for (var i = 0; i < array_length(nomes); i++) {
            var nome = nomes[i];
            var substruct = data[$ nome];

            if (!is_struct(substruct)) continue;

            var subkeys = variable_struct_get_names(substruct);
            for (var j = 0; j < array_length(subkeys); j++) {
                var key = subkeys[j];
                var score_entry = substruct[$ key];

                if (is_struct(score_entry) && variable_struct_exists(score_entry, "score")) {
                    var valor_score = score_entry.score;
                    array_push(leaderboard, { nome: nome, score: valor_score });
                }
            }
        }

        // Ordena do maior para o menor
        array_sort(leaderboard, function(a, b) { return b.score - a.score; });

        // Monta o Top 5
        texto_top5 = "";
        for (var i = 0; i < min(5, array_length(leaderboard)); i++) {
            var p = leaderboard[i];
            texto_top5 += string(i + 1) + ". " + p.nome + " - " + string(p.score) + "\n";
        }

        // Mostra posição do jogador
        var posicao = -1;
        for (var i = 0; i < array_length(leaderboard); i++) {
            if (leaderboard[i].nome == player_name) {
                posicao = i + 1;
                break;
            }
        }

        if (posicao > 0) {
            texto_player  = "Seu Score: " + string(player_score);
            texto_posicao = "Sua posicao: " + string(posicao);
        } else {
            texto_player  = "Seu Score: " + string(player_score);
            texto_posicao = "Voca ainda nao esta no ranking.";
        }

    } else {
        texto_top5 = "Erro ao conectar ao servidor.";
    }
}
