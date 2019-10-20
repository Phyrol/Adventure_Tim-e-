sprite_index = spr_player_stand_R;
image_index = 0;
depth = -1000;

hp_ = 100;
health = hp_;
alarm_set(0, 1);
damage_ = 100;

gImageSpeedStand = 0.25;
gImageSpeedMove = 1.5;
image_speed = gImageSpeedStand;

jumped = 0;
deathObj = obj_player_death;
pDirection = 0;

//***code from video
/// @description Movement variables
velocity_ = [0, 0];
gravity_ = 0.8;
jump_speed_ = 11;
max_velocity_ = [3, 9]; //[x, y]
acceleration_ = 10;

// Get the tilemap id
var layer_id = layer_get_id("CollisionBlock");
collision_tile_map_id_ = layer_tilemap_get_id(layer_id);