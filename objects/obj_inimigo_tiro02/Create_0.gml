/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//Velocidade base
speed = 6
//Achando a direção para onde eu devo ir
if instance_exists(obj_player)
{
direction = point_direction(x,y,obj_player.x,obj_player.y);
image_angle = direction + 90;
}