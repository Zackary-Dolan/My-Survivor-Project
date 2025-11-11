/// @description calculate where er touched the screen

var _clicked_x = device_mouse_x_to_gui(0);
var _clicked_y = device_mouse_y_to_gui(0);

var _dist = point_distance(x_anchor,y_anchor,_clicked_x,_clicked_y);

if (device_mouse_check_button(0,mb_left))
{
	if (_dist < max_dist)
	{
		was_clicked = true;	
	}
}
else
{
	was_clicked = false;
}

if (was_clicked)
{
	if (_dist < max_dist)
	{
		x = _clicked_x;
		y = _clicked_y;
	}
	
	else
	{
		x = x_anchor + lengthdir_x(max_dist,point_direction(x_anchor,y_anchor,_clicked_x,_clicked_y));
		y = y_anchor + lengthdir_y(max_dist,point_direction(x_anchor,y_anchor,_clicked_x,_clicked_y));
	}
}
else
{
	x = x_anchor;
	y = y_anchor;
}

x_stick = -1*(x_anchor - x)/(max_dist);
y_stick = -1*(y_anchor - y)/(max_dist);