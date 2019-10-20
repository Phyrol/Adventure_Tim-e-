if(global.sfx == 1)
{
	audio_play_sound(snd_click, 1, false);
}

room_goto(rm_level1);
global.level = 1;

if(file_exists("Save.sav"))
{
	file_delete("Save.sav");
}