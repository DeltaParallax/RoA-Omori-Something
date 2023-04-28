//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//others
switch (attack)
{
    case AT_BAIR:
        if window == 1 and window_timer == 14 {
            sound_play(sound_get("sfx_spider_stab"), false, noone, 0.4, 0.9)
        }
    break;
    case AT_NAIR:
    
        switch (window)
        {
            case 1:
                if (window_timer == 1)
                {
                    sound_play(sound_get("sfx_glitch"), false, noone, 0.5, 1.1)
                }
                else if (window_timer == 4)
                {
                    sound_play(sound_get("sfx_swipe"), false, noone, 0.4, 0.75)
                }
            break;
        }
    
    break;
    
    case AT_DATTACK:
    can_fast_fall = window == 1;
    
    switch (window)
    {
        case 1:
            if (window_timer == 4)
            {
                sound_play(asset_get("sfx_ori_uptilt_single"), false, noone,1,0.8);
            }
            
            if (up_down)
            {
                dattack_angle_difference = -17;
            }
        break;
    }
    break;

    case AT_FTILT:
        if (window == 1 and window_timer == 9)
        {
            sound_play(asset_get("sfx_zetter_downb"), false, noone);
        }
    break;
    
     case AT_NSPECIAL:
        if (window == 1 and window_timer == 4)
        {
            sound_play(sound_get("sfx_throw"), false, noone);
        }
    break;
    
    case AT_USTRONG:
    if window == 3 && window_timer == 8{
        var new_particle = {
            frame : 5,
            frame_adv : 1/5,
            sprite : sprite_get("ustrong_back"),
            angle : 0,
            torque : 0,
            alpha : 1,
            alpha_decay : 0,
            hsp : 0,
            vsp : 0,
            hsp_decay : 0,
            grav : 0,
            x_pos : x,
            y_pos : y,
            x_scale : 1,
            y_scale : 1,
            layer : -1,
            shaded : 1
        }
        
        ds_list_add(particles, new_particle);
    }
    break;
    
    case AT_FSPECIAL:
    if window == 1 && window_timer == 11 && !free && !instance_exists(puddle) && (instance_exists(collision_line(x + 74*spr_dir, y + 2, x + 74*spr_dir, y + 18, asset_get("par_block"), 1, 1)) || instance_exists(collision_line(x + 74*spr_dir, y + 2, x + 74*spr_dir, y + 18, asset_get("par_jumpthrough"), 1, 1))) puddle = instance_create(x + 34*spr_dir, y + 2, "obj_article1");
    if window == 2 && instance_exists(puddle){
        if puddle.state == 3 && special_down && !tap_timer && !puddle.attack{
            puddle.state = 2;
            puddle.timer = 0;
        }
        if tap_timer tap_timer--;
        if special_pressed && tap_timer{
            puddle.attack = 1
            puddle.depth = depth - 2;
        }
        if !special_down && !tap{
            window_timer = 0;
            puddle.hsp = 0;
            tap_timer = 10;
            tap = 1;
            if !puddle.attack && puddle.state != 5{
                puddle.state = 3;
                puddle.timer = 0;
            }
        }
        if tap_timer == 1{
            window = 3;
            window_timer = 0;
        }
    }
    clear_button_buffer(PC_SPECIAL_PRESSED);
    if window == 2 && !instance_exists(puddle){
        window = 3;
        window_timer = 0;
    }
    break;
    case AT_USPECIAL:
    can_move = 0;
    can_fast_fall = 0;
    hsp = 0;
    vsp = (window = 3 && window_timer >= 28? vsp: 0);
    if window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) usp_angle = (joy_pad_idle? 90: joy_dir);
    if window == 2{
        visible = 0;
        if window_timer == 2 for(var n = 250; n >= 0; n--){
            if !instance_exists(collision_point(x + dcos(usp_angle)*n, y - dsin(usp_angle)*n - char_height/2, asset_get("par_block"), 1, 1)){
                t_dist = n;
                break;
            }
        }
        if window_timer == 4{
            x += dcos(usp_angle)*t_dist;
            y -= dsin(usp_angle)*t_dist - char_height/2;
        }
    }
    
    if window == 3 {
        visible = 1;
        
        if window_timer == 2 {
            sound_play(sound_get("sfx_glitch_custom"));
        }
        if window_timer == 6 {
            sound_play(sound_get("sfx_glitch"));
        }
        
      }
    break;
    case AT_USTRONG:
        if window == 2 and window_timer == 1 {
            sound_play(sound_get("sfx_ustrong_stab"), false, noone, 0.4, 1.2)
            sound_play(asset_get("sfx_frog_ustrong"), false, noone, 0.6, 0.95)
            sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.4, 0.86)
        }
    break;
    case AT_DSTRONG:
    switch (window) {
        case 2:
        if window_timer == 2 {
            sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.8, 0.9)
        }
        break;
        case 3:
            if window_timer == 1 && !hitpause shake_camera(1, 5);
        break;
    }
    break;
}