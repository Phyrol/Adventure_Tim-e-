var dist = 100;

if(instance_exists(object))
{
	if(object.x >= x - dist && object.x < x)
	{
		if(sprite_index != spr_mSlime_left)
		{
			sprite_index = spr_mSlime_left;
			image_index = 0;
		}
	}
	if(object.x >= x && object.x < x + dist)
	{
		if(sprite_index != spr_mSlime_right)
		{
			sprite_index = spr_mSlime_right;
			image_index = 0;
		}
	}
}

var checkBullet = instance_place(x, y, obj_bullet_player);
if(checkBullet)
{
	instance_change(obj_mSlime_death, true);
}