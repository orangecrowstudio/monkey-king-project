/// @description Insert description here
// You can write your code in this editor

image_speed = 0
image_index = 0;

//Health
global.hp = 100;
healthDrainCheck = true;
//healthDrain = false;
healthDrain1 = irandom_range(60*5,60*10);
//healthDrain2 = irandom_range(5,10);

//Peaches
global.peachNum = 0;
eatPeach = false;


//Movement speed
running = false;
spd = 5;
baseSpeed = 5;
runSpeed = 8;
sprintSpeed = 10;


/////CREATE EVENT//////
sprinting = false;
playerSpeed = 1;
 