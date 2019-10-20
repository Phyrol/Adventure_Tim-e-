var checkBullet = instance_place(x, y, obj_bullet_manager);
var checkDeath = instance_place(x, y, obj_marker_death);
var checkLava = instance_place(x, y, obj_lava_manager);
var checkMonster = instance_place(x, y, obj_monster_manager);
var checkTrap = instance_place(x, y, obj_trap_manager);
var takeDamage;

if(checkBullet)
{
	health -= damage_;
}

if(checkDeath || checkLava)
{
	health -= 100;
}

if(checkMonster)
{
	with(obj_monster_manager) takeDamage = can_damage_;

	if(takeDamage == 1)
	{
		health -= damage_;
		with(obj_monster_manager) 
		{
			can_damage_ = 0;
			alarm_set(10, 20);
		}
	}
}

if(checkTrap)
{
	with(obj_trap_manager) takeDamage = can_damage_;

	if(takeDamage == 1)
	{
		health -= damage_;
		with(obj_trap_manager) 
		{
			can_damage_ = 0;
			alarm_set(10, 20);
		}
	}

	
}