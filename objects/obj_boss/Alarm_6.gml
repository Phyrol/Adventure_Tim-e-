instance_create_layer(x, y + (sprite_height / 2), "Instances", obj_bullet_upHalf);
instance_create_layer(x, y + (sprite_height / 2), "Instances", obj_bullet_chase);
instance_create_layer(x, y + (sprite_height / 2), "Instances", obj_bullet_downHalf);

alarmCount_ -= 4;
alarm_set(alarmCount_, alarmTime_);