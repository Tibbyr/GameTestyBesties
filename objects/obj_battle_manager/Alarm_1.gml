var _enemy_damage = obj_battle_enemy.data.damage * random_range(0.7, 1.2); // Enemy damage Calc
obj_battle_player.data.hp -= _enemy_damage;
enemy_turn = 0; // Ends enemy's turn, players turn

if (check_for_end()){
    alarm[2] = 60;
}