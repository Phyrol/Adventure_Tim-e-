var checkP = instance_exists(obj_player);
var checkP2 = instance_exists(obj_player_death);
var hp = 0;
with(obj_player)
{
	hp = health;
}

if(global.simple == 1)
{
	if(checkP || checkP2)
	{
		draw_set_color(c_white);
		draw_set_font(fnt_text);
		//draw_text(5, browser_height - 20, "Health: ");
		//draw_healthbar(73, browser_height - 15, 173, browser_height - 3, hp, c_black, c_red, c_green, 0, true, true);
		//draw_text(200, browser_height - 20, "Level: " + string(global.level));
		draw_text(5, 460, "Health: ");
		draw_healthbar(73, 465, 173, 477, hp, c_black, c_red, c_green, 0, true, true);
		draw_text(200, 460, "Level: " + string(global.level));
	}
}