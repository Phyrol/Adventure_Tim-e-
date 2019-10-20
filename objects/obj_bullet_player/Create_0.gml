// You can write your code in this editor
var spr1, spr2;
var object = obj_player;

//gets if sprite is walk or stand RIGHT
with(object)
{
	spr1 = sprite_index == spr_player_stand_R || sprite_index == spr_player_walk_R;
}
if(spr1)
{
	hspeed = 11;
}

//gets if sprite is walk or stand LEFT
with(object)
{
	spr2 = sprite_index == spr_player_stand_L || sprite_index == spr_player_walk_L;
}
if(spr2)
{
	hspeed = -11;
}

// Get the tilemap id
var layer_id = layer_get_id("CollisionBlock");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);

velocity_ = [0, 0];