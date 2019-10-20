if(file_exists("Save.sav"))
{
	game_load("Save.sav");
}
else
{
	show_message("No Save File Found");
}