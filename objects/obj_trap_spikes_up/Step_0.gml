if(instance_exists(object))
{
	if(object.bbox_right >= bbox_left - 4 && object.bbox_left < bbox_right && object.bbox_bottom <= bbox_top)
	{
		speed = 10;
	}
}