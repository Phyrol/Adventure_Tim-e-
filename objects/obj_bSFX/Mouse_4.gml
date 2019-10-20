if(global.sfx == 1)
{
	audio_play_sound(snd_click, 1, false);
	global.sfx = 0;
}
else
{
	global.sfx = 1;
}