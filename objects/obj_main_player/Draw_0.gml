/// @description Insert description here
// You can write your code in this editor

event_inherited();

draw_self();

var _spacing = 15;
if (bullets > 0)
{
	for (var _loop = 1; _loop <= bullets; _loop++)
	{
		draw_sprite(spr_bullet, 0, x - _spacing, y + 40);
		_spacing -= 8;
	}
}
else
{
	draw_rectangle_color(x - 20, y + 40, x + (timer_counter / 2), y + 44,  c_yellow, c_yellow, c_yellow, c_yellow, false);
}
