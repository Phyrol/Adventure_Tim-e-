if(sprite_index == spr_mBoar_left)
{
	instance_create_layer(x, y + 14, "Instances", obj_mBullet_boarLeft);
}
else
{
	instance_create_layer(x + 18, y + 14, "Instances", obj_mBullet_boarRight);
}

if(isNear_)
{
	alarm_set(0, alarmTime_);
}