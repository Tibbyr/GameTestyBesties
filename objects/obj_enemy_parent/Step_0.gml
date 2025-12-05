var _horizontal = clamp(target_x - x, -1, 1)
var _vertical = clamp(target_y - y, -1, 1)

move_and_collide(_horizontal * move_speed, _vertical * move_speed, [tilemap, obj_enemy_parent], undefined, undefined, undefined, move_speed, move_speed);