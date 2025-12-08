//Turn order

// Player Attacks

obj_battle_enemy.data.hp -= damage_to_enemy;

//alarm[1] = 60; // Enemy to attack after 60 frames

if(check_for_end()){
    alarm[2] = 60;
} else {
	alarm[1] = 60; // enemy attacks
    obj_battle_enemy.alarm[0] = 30;
}

obj_battle_player.data.charge += 0.4; // increases charge every attack
if(obj_battle_player.data.charge >= 1){
    obj_battle_player.data.charge = 1;
}