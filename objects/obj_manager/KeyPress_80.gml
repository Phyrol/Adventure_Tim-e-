if(room == rm_level1)
{
	room_goto(rm_front);
	global.level = 0;
	exit;
}

if (room - 1 != -1)
{
	room_goto(room - 1);
	global.level -= 1;
}