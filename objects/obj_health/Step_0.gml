var checkP = instance_place(x, y, obj_player);
var refill;

if(checkP)
{
	instance_destroy();
	if(global.invincible == 1)
	{
		refill = global.godly;
	}
	else
	{
		refill = 100;
	}

	with(obj_player)
	{
		health = refill;
	}
}