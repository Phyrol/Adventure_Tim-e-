if(instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x + 12, obj_player.y + 12);
}
else
{
	direction = 270;
}

speed = 5;

// Get the tilemap id
var layer_id = layer_get_id("CollisionBlock");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);

velocity_ = [0, 0];