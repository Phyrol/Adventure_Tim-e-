var checkObj = instance_place(bbox_right + 1, y, obj_marker_enemy);
var checkObj2 = instance_place(bbox_left - 1, y, obj_marker_enemy);
var distX = 140;
var distY = 50;

if(instance_exists(object_))
{
	if(object_.x >= x - distX && object_.x < x && (object_.y > y - distY && object_.y < y + distY))
	{
		if(sprite_index != spr_mBoar_left)
		{
			sprite_index = spr_mBoar_left;
			image_index = 0;
		}
		isNear_ = true;
		if(!alarmSet_)
		{
			alarm_set(0, alarmTime_);
			alarmSet_ = true;
		}
		if(checkObj)
		{
			direction = 180;
		}
		if(checkObj2)
		{
			direction = 0;
		}
	}
	else if(object_.x >= x && object_.x < x + distX && (object_.y > y - distY && object_.y < y + distY))
	{
		if(sprite_index != spr_mBoar_right)
		{
			sprite_index = spr_mBoar_right;
			image_index = 0;
		}
		isNear_ = true;
		if(!alarmSet_)
		{
			alarm_set(0, alarmTime_);
			alarmSet_ = true;
		}
		if(checkObj)
		{
			direction = 180;
		}
		if(checkObj2)
		{
			direction = 0;
		}
	}
	else
	{
		isNear_ = false;
		alarmSet_ = false;
		//collision with obj_marker_enemy
		if(checkObj)
		{
			direction = 180;
			sprite_index = spr_mBoar_left;
			image_index = 0;
		}
		if(checkObj2)
		{
			direction = 0;
			sprite_index = spr_mBoar_right;
			image_index = 0;
		}
	}
}

var checkBullet = instance_place(x, y, obj_bullet_player);
if(checkBullet)
{
	instance_change(obj_mBoar_death, true);
}