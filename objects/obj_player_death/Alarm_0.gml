if(file_exists("Save.sav"))
{
	game_load("Save.sav");
}
else
{
	room_restart();
}