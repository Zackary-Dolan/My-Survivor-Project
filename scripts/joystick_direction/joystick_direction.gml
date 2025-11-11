// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function joystick_direction()
{
	var _clicked_x = device_mouse_x_to_gui(0);
	var _clicked_y = device_mouse_y_to_gui(0);
	var _my_target_x = obj_joystick.x_anchor;
	var _my_target_y = obj_joystick.y_anchor;
	// get direction from anchor to where screen is pressed/clicked
	return point_direction(_my_target_x, _my_target_y, _clicked_x, _clicked_y);
}