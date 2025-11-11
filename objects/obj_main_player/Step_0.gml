/// @description Insert description here
// You can write your code in this editor

x+=obj_joystick.x_stick * spd;
y+=obj_joystick.y_stick * spd;

//find the camera, using it get the width and height 
// set the camera position ralative to the player
var _cam = view_get_camera(0);
var _res_w = camera_get_view_width(_cam) / 2;
var _res_h = camera_get_view_height(_cam) / 2;
camera_set_view_pos(_cam, x - _res_w, y - _res_h);

var _move_direction = joystick_direction();

//should we stop the player moving
if (abs(obj_joystick.x_stick) <= 0.001 && abs(obj_joystick.y_stick) <= 0.001)	
{
	sprite_index = spr_player_standing;
	speed = 0;
}
else if(_move_direction <= 70 || _move_direction >= 290)
{
	sprite_index = spr_player_right;
}
else if (_move_direction > 70 && _move_direction < 110)
{
	sprite_index = spr_player_up;
}
else if (_move_direction >= 110 && _move_direction <= 250)
{
	sprite_index = spr_player_left;
}
else
{
	sprite_index = spr_player_down;
}

image_speed = .33;

event_inherited();

can_shoot_weapon1++;

if (!start_timer)
{
	if (can_shoot_weapon1 >= 0 && bullets > 0)
	{
		if(weapon_selected == 0)
		{
			instance_create_depth(x, y, -10, obj_single_bullet);
			audio_play_sound(snd_gun_shot, 100, false);
			can_shoot_weapon1 = -15;
			bullets--;
			if (bullets == 0)
			{
				start_timer = true;
				timer_counter = 0;
			}
		}
	}
}
else
{
	if (timer_counter >= 40)
	{
		bullets = 5;
		start_timer = false;
	}
}
			
			