if (len == 0) {dir = face*90;}
len = spd * 4;

//Get the hspeed and vspeed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Move
phy_position_x += hspd;
phy_position_y += vspd;

// Create Dash Effect
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;
audio_play_sound(snd_dash_sound, 10, false);
