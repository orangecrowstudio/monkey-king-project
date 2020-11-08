/// @description Insert description here
// You can write your code in this editor

/*
//Movement
if keyboard_check(ord("D")) {
	hspeed = spd;
}

switch (keyboard_key) {
    case vk_left:
    case ord("A"):
        x -= spd;
        break;
    case vk_right:
    case ord("D"):
        x += spd;
        break;
    case vk_up:
    case ord("W"):
        y -= spd;
        break;
    case vk_down:
    case ord("S"):
        y += spd;
        break;
}
*/
 
///Movement
Key_Left = keyboard_check_direct(ord("A"));
Key_Right = keyboard_check_direct(ord("D"));
Key_Up = keyboard_check_direct(ord("W"));
Key_Down = keyboard_check_direct(ord("S"));
Key_Sprint = keyboard_check_direct(vk_lshift);
 
key_hor = Key_Right - Key_Left;
key_vert = Key_Down - Key_Up;
key_speed = min(1,abs(key_hor)+abs(key_vert));
key_dir = point_direction(0,0,key_hor,key_vert);
 
 
//Collisions and Movement
//Horizontal (X)
if place_meeting(x+(sign(key_hor)*8),y,obj_wall){
 
    while !place_meeting(x+(sign(key_hor)*4),y,obj_wall){
        x += key_hor;
    }
 
    if place_meeting(x+(sign(key_hor)*8),y+16,obj_wall){
        y = y - 4;
    }
 
    if place_meeting(x+(sign(key_hor)*8),y-16,obj_wall){
        y = y + 4;
    }
 
}
else
{
    x += lengthdir_x(key_speed*playerSpeed,key_dir);
}
 
//Vertical (Y)
if place_meeting(x,y+(sign(key_vert)*8),obj_wall){
 
    while !place_meeting(x,y+(sign(key_vert)*4),obj_wall){
        y += key_vert;
    }
 
    if place_meeting(x+16,y+(sign(key_vert)*8),obj_wall){
        x = x - 4;
    }
 
    if place_meeting(x-16,y+(sign(key_vert)*8),obj_wall){
        x = x + 4;
    }
 
}
else
{
    y += lengthdir_y(key_speed*playerSpeed,key_dir);
}
 
if (Key_Sprint){
    sprinting = true;
    playerSpeed = 8;
}
else{
	//if !running {
		//alarm_set(1,4);
		//running = true;
	//}
    sprinting = false;
    playerSpeed = 5;
}


//switch (keyboard_key) {
//    case vk_left:
//    case ord("A"):
//        sprite_index = spr_playerMove;
//        break;
//    case vk_right:
//    case ord("D"):
//       sprite_index = spr_playerMove;
//        break;
//    case vk_up:
//    case ord("W"):
//        sprite_index = spr_playerMove;;
//        break;
//    case vk_down:
//    case ord("S"):
//        sprite_index = spr_playerMove;
//        break;
//	case vk_nokey:
//        sprite_index = spr_playerIdle;
//        break;
//}
if keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D")) or keyboard_check(ord("W")) {
	sprite_index = spr_playerMove;
}else sprite_index = spr_playerIdle;

if keyboard_check(vk_lshift) {
	image_speed = 2;
} else image_speed = 1;

show_debug_message(string(spd));

//if keyboard_check(vk_nokey) {
//	spd = 5;
//}
 
image_angle = point_direction(x,y,mouse_x,mouse_y);




///

if healthDrainCheck {
	healthDrainCheck = false;
	alarm_set(0,healthDrain1);
	healthDrain1 = irandom_range(60*5,60*10);
}

//Eat a peach
if keyboard_check_pressed(ord("E")) and global.peachNum > 0 {
	global.peachNum -= 1;
	global.hp += 5;
	show_debug_message(string(global.peachNum));
	eatPeach = true;
}

//Eat a peach animation
//if eatPeach {
//	image_speed = 1;
//}

//if !eatPeach {
//	image_speed = 0;
//	image_index = 0;
//}