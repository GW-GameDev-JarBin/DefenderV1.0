scr_get_input();

if (dash_key and obj_player_stat.stamina >= DASH_COST){
    state = scr_dash_state;
    alarm[0] = room_speed/6;
    obj_player_stat.stamina -= DASH_COST;
    obj_player_stat.alarm[0] = room_speed*2;
}
if (attack_key){
    image_index = 0;
    state = scr_attack_state;
}
if(frozen_key){
    alarm[0] = room_speed;
    state = scr_frozen_state; 
}
image_blend = c_white;
//Get direction
dir = point_direction(0, 0, xaxis, yaxis);

//Get length
if (xaxis == 0 and yaxis == 0){
    len = 0;
}else{
    scr_get_face();
    len = spd;
}

//Get the hspeed and vspeed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

//Control the sprite
image_speed = .2;
if (len == 0) image_index = 0;

switch(face){
    case RIGHT:
        sprite_index = spr_player_right;
        break;
    case UP:
        sprite_index = spr_player_up;
        break;
    case LEFT:
        sprite_index = spr_player_left;
        break;
    case DOWN:
        sprite_index = spr_player_down;
        break;
}

// Vertical sprites
//if (vspd > 0){
  //  sprite_index = spr_player_down;
//}else if(vspd < 0){
//    sprite_index = spr_player_up;
//}
// Horizontal sprites
//if (hspd > 0){
 //   sprite_index = spr_player_right;
//}else if (hspd < 0){
 //   sprite_index = spr_player_left;
//}


