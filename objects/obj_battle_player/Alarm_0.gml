//Runs every frame until animation is finished

x += 2; // x is a special variable like y, where x can be used to move the sprite in a direction horizontally to the right if added to, and left if reduced value.

if (x > xstart + 20){ // checks if it's moved 20 pixels to the right of it's starting position
    alarm[1] = 1; // Moves character back to starting point
} else{
    alarm[0] = 1; //increments the moving of the frame forward
}