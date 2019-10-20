var dist = 110;

if(instance_exists(object_))
{
	if(object_.x >= x - dist && object_.x < x && object_.y > y)
	{
		if(sprite_index != spr_mFlying_left)
		{
			sprite_index = spr_mFlying_left;
			image_index = 0;
		}
		isNear_ = true;
		if(!alarmSet_)
		{
			alarm_set(0, alarmTime_);
			alarmSet_ = true;
		}
	}
	else if(object_.x >= x && object_.x < x + dist && object_.y > y)
	{
		if(sprite_index != spr_mFlying_right)
		{
			sprite_index = spr_mFlying_right;
			image_index = 0;
		}
		isNear_ = true;
		if(!alarmSet_)
		{
			alarm_set(0, alarmTime_);
			alarmSet_ = true;
		}
	}
	else
	{
		isNear_ = false;
		alarmSet_ = false;
	}
}

var checkBullet = instance_place(x, y, obj_bullet_player);
if(checkBullet)
{
	instance_change(obj_mFlying_death, true);
}
