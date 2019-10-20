hspeed = -11;

// Get the tilemap id
var layer_id = layer_get_id("CollisionBlock");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);

velocity_ = [0, 0];