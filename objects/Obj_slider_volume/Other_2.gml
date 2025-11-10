// Se já existir um valor salvo, carrega do arquivo
if (file_exists("config.ini")) {
    ini_open("config.ini");
    global_volume = ini_read_real("AUDIO", "volume", 1); // valor padrão = 1
    ini_close();
} else {
    global_volume = 1;
}