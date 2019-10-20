/// @description Movement logic
// Get the input
var x_input = (keyboard_check(vk_right) - keyboard_check(vk_left)) * acceleration_;

// Vector variables
var vector2_x = 0;
var vector2_y = 1;

// Horizontal movement
velocity_[vector2_x] = clamp(velocity_[vector2_x]+x_input, -max_velocity_[vector2_x], max_velocity_[vector2_x]);

//***This code is not from video***
//set sprite direction
if x_input < 0
{
	sprite_index = spr_player_walk_L;
	image_speed = gImageSpeedMove;
	pDirection = -1;
}
if x_input > 0
{
	sprite_index = spr_player_walk_R;
	image_speed = gImageSpeedMove;
	pDirection = 1;
}
//**end***//
// Friction
if x_input == 0 {
	velocity_[vector2_x] = lerp(velocity_[vector2_x], 0, 1);
	if(pDirection < 0)//this not in video
	{
		sprite_index = spr_player_stand_L;
	}
	if(pDirection > 0) //this not in video
	{
		sprite_index = spr_player_stand_R;
	}
	image_speed = gImageSpeedStand;
}

// Gravity
velocity_[vector2_y] += gravity_;

// Move and contact tiles
move_and_contact_tiles(collision_tile_map_id_, 32, velocity_);

// Jumping
var on_ground = tile_collide_at_points(collision_tile_map_id_, [bbox_left, bbox_bottom], [bbox_right-1, bbox_bottom]);
var jumpKey = keyboard_check_pressed(vk_shift);
if jumped < 1 { //jumped < 1 is actually (on_ground) in video
	// Jumping
	if jumpKey {
		velocity_[vector2_y] = -jump_speed_;
		jumped += 1;
	}
} else {
	// Control jump height
	if jumpKey && velocity_[vector2_y] <= -(jump_speed_/3) {
		velocity_[vector2_y] = -(jump_speed_/3);
	}
}
//***this code not in video***//
if(on_ground)
{
	jumped = 0;
}