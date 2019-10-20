if(spam_ < 4)
{
	instance_create_layer(x, y + (sprite_height / 2), "Instances", obj_bullet_chase);
	alarm_set(alarmCount_, 30);
	spam_ += 1;
}
else
{
	alarmCount_ += 1;
	spam_ = 0;
	alarm_set(alarmCount_, alarmTime_);
}