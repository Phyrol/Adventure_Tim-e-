bullet_contact_tiles(collision_tile_map_id_, 32, velocity_);

var checkMon = instance_place(x, y, obj_monster_manager);
var checkShield = instance_place(x, y, obj_shield);
var checkStop = instance_place(x, y, obj_bulletStop);

if(checkMon || checkShield || checkStop)
{
	alarm_set(0, 1);
}
