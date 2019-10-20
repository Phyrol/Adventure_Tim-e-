bullet_contact_tiles(collision_tile_map_id_, 32, velocity_);

if(instance_exists(obj_player))
{
	var checkP = instance_place(x, y, obj_player);

	if(checkP)
	{
		instance_destroy();
	}
}