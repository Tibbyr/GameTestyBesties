// Movement related variables intialization
move_speed = 1;
dash_speed = 4;
dash_window = 30; // frames, how long to double tap
dash_duration = 12; // how many steps the dash lasts

am_I_dashing = false;
dash_time_left = 0;
dash_dir_x     = 0;
dash_dir_y     = 0;

// Timers for each direction's double-tap
dash_timer_up    = 0;
dash_timer_down  = 0;
dash_timer_left  = 0;
dash_timer_right = 0;



// Barriers/Collisions
tilemap = layer_tilemap_get_id("Tiles_Barriers");
mask_index = spr_player_idle_down;