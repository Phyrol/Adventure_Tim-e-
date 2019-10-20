event_inherited();

image_speed = 0.25;
direction = 90;
speed = 1.8;

health_ = 100;
global.bossBulletSpeed = 3;

spam_ = 0;

alarmTime_ = 105;
alarmCount_ = 2;
arcTime_ = 55;

alarm_set(0, 120);
alarm_set(1, arcTime_);
alarm_set(alarmCount_, 90);