/// @description too far = destroy

if(point_distance(obj_parent_player.x, obj_parent_player.y, x, y) >= 400)
{
	instance_destroy();
}


