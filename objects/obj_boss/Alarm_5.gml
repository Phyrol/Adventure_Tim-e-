instance_create_layer(x, y + (sprite_height / 2), "Instances", obj_bullet_up);
instance_create_layer(x, y + (sprite_height / 2), "Instances", obj_bullet_upHalf);
instance_create_layer(x, y + (sprite_height / 2), "Instances", obj_bullet_straight);
instance_create_layer(x, y + (sprite_height / 2), "Instances", obj_bullet_downHalf);
instance_create_layer(x, y + (sprite_height / 2), "Instances", obj_bullet_down);

alarmCount_ += 1;
alarm_set(alarmCount_, alarmTime_);