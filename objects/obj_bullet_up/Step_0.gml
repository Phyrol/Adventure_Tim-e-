var checkP = instance_place(x, y, obj_player);
var checkBlock = instance_place(x, y, obj_block);
var checkBlock2 = instance_place(x, y, obj_lava);

if(checkP)
{
	instance_destroy();
}

if(checkBlock || checkBlock2)
{
	vspeed = -vspeed;
}