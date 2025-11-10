/// No botão "Voltar" ou no Cleanup Event do slider:
ini_open("config.ini");
ini_write_real("AUDIO", "volume", global_volume);
ini_close();
