// Changing color of buttons depending on the context (i.e can't use them during enemy turn
if (obj_battle_manager.enemy_turn){
    image_alpha = 0.2;
} else {
	image_alpha = 1;
}