// This is weird. The reason this works is because it's looking at the instance variable which only exists at runtime, this logic is defined in obj_player collision object, and battle_switcher is set to persistent
data = obj_battle_switcher.enemy_data;
sprite_index = data.sprite_index; // applies the current game room sprite being used for the enemy encountered