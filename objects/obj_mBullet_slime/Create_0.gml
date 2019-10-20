var spr1, spr2;
var object = obj_mSlime;

gravity_ = 0.1;
gravity = gravity_;

//gets if sprite is walk or stand RIGHT
with(object)
{
	spr1 = sprite_index == spr_mSlime_right;
}
if(spr1)
{
	direction = 45;
}

//gets if sprite is walk or stand LEFT
with(object)
{
	spr2 = sprite_index == spr_mSlime_left;
}
if(spr2)
{
	direction = 135;
}

speed = 4;

// Get the tilemap id
var layer_id = layer_get_id("CollisionBlock");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);

velocity_ = [0, 0];