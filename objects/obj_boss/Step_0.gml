event_inherited();

var checkBullet = instance_place(x, y, obj_bullet_player);
var imgIndex = 0;

if(checkBullet)
{
	health_ -= 5;
	if(image_index == 0)
	{
		imgIndex = 0;
	}
	else if(image_index == 1)
	{
		imgIndex = 1;
	}
	else
	{
		imgIndex = 2;
	}
	sprite_index = spr_mBoss2Hit;
	image_index = imgIndex;
	alarm_set(9, 8);
}

if(health_ <= 0)
{
	instance_change(obj_boss_death, true);
}