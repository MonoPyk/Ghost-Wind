if (!async_load[? "id"]) exit;

var status = async_load[? "status"];
var result = async_load[? "result"];

if (status == 200 && result != "") {
    var data = json_parse(result);
    leaderboard = [];

    var keys = ds_map_keys(data);
    for (var i = 0; i < array_length(keys); i++) {
        player_name = keys[i];                        // sem 'var'
        player_score = data[? player_name][? "score"]; // sem 'var'
        array_push(leaderboard, {name: player_name, score: player_score});
    }

    // Ordena do maior para o menor
    array_sort(leaderboard, function(a, b) { return b.score - a.score; });
} else {
    show_debug_message("Erro Firebase HTTP: " + string(status));
}

