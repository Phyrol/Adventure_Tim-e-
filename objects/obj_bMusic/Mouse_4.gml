if(global.sfx == 1)
{
	audio_play_sound(snd_click, 1, false);
}

if(audio_is_playing(snd_music))
{
	audio_stop_sound(snd_music);
}
else
{
	audio_play_sound(snd_music, 1, true);
}