if(room == rm_front)
{
	room_goto(rm_level1);
	global.level = 1;
	exit;
}

if (room_next(room) != -1 )
{
	room_goto(room + 1);
	global.level += 1;
}