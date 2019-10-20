if(sprite_index == spr_mFlying_left)
{
	instance_create_layer(x, y + 14, "Instances", obj_mBullet_flying);
}
else
{
	instance_create_layer(x + 18, y + 14, "Instances", obj_mBullet_flying);
}

if(isNear_)
{
	alarm_set(0, alarmTime_);
}