// When colliding with object enemy parent
if(instance_exists(obj_battle_switcher)) exit;
    
var _switcher = instance_create_depth(0,0,0,obj_battle_switcher); // Creates instance of battle_switcher

// Structs, collections of variables from 
_switcher.player_data = self;
_switcher.enemy_data = other;
_switcher.original_room = room;

// TODO: Could set up a little opening animation before battle here
room_goto(rm_battle);

