if instance_exists(obj_player) && point_distance(x,y, obj_player.x,obj_player.y) < 150 {
	direction = point_direction(x,y, obj_player.x,obj_player.y)
	speed = 10
}