var checkLadder = instance_place(x, bbox_top, obj_marker_ladder);
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

var dist = 2;
var checkBlock = instance_place(x, bbox_top - dist, obj_block);

if(checkLadder)
{
	gravity = 0;
	if(sprite_index != spr_player_climb)
	{
		sprite_index = spr_player_climb;
		image_index = 0;
		image_speed = 0;
		velocity_ = [0, 0];
	}
	
	if(!checkBlock)
	{
		if(up)
		{
			y += -dist;
			image_speed = gImageSpeedMove;
		}
	}
	else
	{
		image_speed = 0;
	}
	
	if(left)
	{
		x += -dist;
		image_speed = gImageSpeedMove;
	}
	else if(right)
	{
		x += dist;
		image_speed = gImageSpeedMove;
	}
	else if(down)
	{
		y += dist;
		image_speed = gImageSpeedMove;
	}
	else if(!up) 
	{
		image_speed = 0;
	}
	jumped = 0;
}
else
{
	if(gravity == 0)
	{
		image_speed = gImageSpeedStand;
	}
	player_movement();
}

scr_check_damage();

if(y > room_height || health <= 0)
{
	instance_change(deathObj, true);
}