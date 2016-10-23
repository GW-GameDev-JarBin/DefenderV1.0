//check for player
if (instance_exists(obj_playerBox)){
    var dis = point_distance(x,y, obj_playerBox.x, obj_playerBox.y);
    if (dis < sight){
        targetx = obj_playerBox.x;
        targety = obj_playerBox.y;
        state = scr_enemy_chase_state;
    }else{
        scr_enemy_chose_next_state();
    }
}else{
    scr_enemy_chose_next_state();
}
