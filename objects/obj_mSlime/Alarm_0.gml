if(sprite_index == spr_mSlime_left)
{
	instance_create_layer(x, y + 4, "Instances", obj_mBullet_slime);
}
else
{
	instance_create_layer(x + 18, y + 4, "Instances", obj_mBullet_slime);
}
alarm_set(0, alarmTime_);