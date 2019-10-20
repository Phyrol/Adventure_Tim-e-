///@param tile_map_id
///@param tile_size
///@param velocity_array
var tile_map_id = argument0;
var tile_size = argument1;
var velocity = argument2;

// For the velocity array
var vector2_x = 0;

// Move horizontally
x += velocity[vector2_x];

// Horizontal collisions
if velocity[vector2_x] > 0 {
	var tile_right = tile_collide_at_points(tile_map_id, [bbox_right-1, bbox_top], [bbox_right-1, bbox_bottom-1]);
	if tile_right {
		x = bbox_right & ~(tile_size-1);
		x -= bbox_right-x;
		instance_destroy();
	}
} else {
	var tile_left = tile_collide_at_points(tile_map_id, [bbox_left, bbox_top], [bbox_left, bbox_bottom-1]);
	if tile_left {
		x = bbox_left & ~(tile_size-1);
		x += tile_size+x-bbox_left;
		instance_destroy();
	}
}