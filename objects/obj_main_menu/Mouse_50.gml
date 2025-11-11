/// @description play button

var _my_x = mouse_x;
var _my_y = mouse_y;

if (_my_x >= 85 && _my_x <= 215 && _my_y >= 75 && _my_y <= 145)
{
	if (can_press > 0)
	{
		can_press = -90;
		room_goto_next();
	}
}

