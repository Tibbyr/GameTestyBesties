// Inputs (raw keyboard)
var _input_horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _input_vertical = keyboard_check(ord("S")) - keyboard_check(ord("W"))

// === DASH TIMERS COUNT DOWN ===
if (dash_timer_up > 0) dash_timer_up--;
if (dash_timer_down > 0) dash_timer_down--;
if (dash_timer_left > 0) dash_timer_left--;
if (dash_timer_right > 0) dash_timer_right--;

// === DOUBLE-TAP DETECTION (only if not already dashing) ===
if (!am_I_dashing) {
    // W = up
    if (keyboard_check_pressed(ord("W"))) {
        if (dash_timer_up > 0) {
            // second tap -> start dash UP
            am_I_dashing     = true;
            dash_dir_x     = 0;
            dash_dir_y     = -1;
            dash_time_left = dash_duration;
        } else {
            dash_timer_up = dash_window;
        }
    }
     // S = down
    if (keyboard_check_pressed(ord("S"))) {
        if (dash_timer_down > 0) {
            // second tap -> start dash DOWN
            am_I_dashing     = true;
            dash_dir_x     = 0;
            dash_dir_y     = 1;
            dash_time_left = dash_duration;
        } else {
            dash_timer_down = dash_window;
        }
    }

    // A = left
    if (keyboard_check_pressed(ord("A"))) {
        if (dash_timer_left > 0) {
            // second tap -> start dash LEFT
            am_I_dashing     = true;
            dash_dir_x     = -1;
            dash_dir_y     = 0;
            dash_time_left = dash_duration;
        } else {
            dash_timer_left = dash_window;
        }
    }

    // D = right
    if (keyboard_check_pressed(ord("D"))) {
        if (dash_timer_right > 0) {
            // second tap -> start dash RIGHT
            am_I_dashing     = true;
            dash_dir_x     = 1;
            dash_dir_y     = 0;
            dash_time_left = dash_duration;
        } else {
            dash_timer_right = dash_window;
        }
    }
}

// === UPDATE DASH STATE ===
if (am_I_dashing) {
    dash_time_left--;
    if (dash_time_left <= 0) {
        am_I_dashing = false;
    }
}

// === CHOOSE FINAL MOVEMENT VECTOR ===
var _horizontal;
var _vertical;
var _speed;

if (am_I_dashing) {
    // While dashing, ignore normal input & move in dash direction
    _horizontal = dash_dir_x;
    _vertical   = dash_dir_y;
    _speed      = dash_speed;
} else {
    // Normal movement
    _horizontal = _input_horizontal;
    _vertical   = _input_vertical;
    _speed      = move_speed;
}

move_and_collide(_horizontal * _speed, _vertical * _speed, tilemap, undefined, undefined, undefined, _speed, _speed)

if (_horizontal != 0 or _vertical != 0){
    if (_vertical > 0) sprite_index = spr_player_walk_down;
    else if (_vertical < 0) sprite_index = spr_player_walk_up;
    else if (_horizontal > 0) sprite_index = spr_player_walk_right;
    else if (_horizontal < 0) sprite_index = spr_player_walk_left;
}
else{
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
    else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    else if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
}