var object = obj_bullet_player;

if(sprite_index == spr_player_stand_R || sprite_index == spr_player_walk_R)
{
	instance_create_layer(bbox_right - 9, y + 7, "Instances", object);
}

if(sprite_index == spr_player_stand_L || sprite_index == spr_player_walk_L)
{
	instance_create_layer(bbox_left + 4, y + 7, "Instances", object);
}

if(global.sfx == 1)
{
	audio_play_sound(snd_shoot, 1, false);
}