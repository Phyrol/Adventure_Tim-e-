if(instance_exists(object))
{
	if((object.bbox_right >= bbox_left && object.bbox_left < bbox_right) && object.bbox_top >= bbox_bottom)
	{
		speed = 13;
	}
}