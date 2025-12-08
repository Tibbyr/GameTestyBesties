draw_self();


// variables declared with var destroy themselves after the events completion, great for non-persistent variables 
var _x = xstart - 20;
var _y = ystart + 20;
var _w = 40;
var _h = 8;

// Drawing the health bar, then filling it based on how much hp it has
draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h); // draws health bar
draw_sprite_stretched_ext(spr_box, 1, _x, _y, _w * (data.hp / data.hp_total), _h, c_green, 1); //draws colored bar (green)


// Moves the drawing position 
_y += _h; // Moves the y var position to +8 (height)
_h = 4;

// Draws the charge bar, filling depending on how much charge you have
draw_sprite_stretched(spr_box, 0, _x, _y, _w, _h);
draw_sprite_stretched_ext(spr_box, 1, _x, _y, _w * data.charge, _h, c_aqua, 1); //draws colored bar (aqua)