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
        can_move = (window == 3 and window_timer > 5);
        switch (window) {
            
            case 1:
                hsp *= 0.98;
                vsp = vsp > 0 ? vsp * 0.95 : vsp;
                
                if window_timer == 18 {
                    sound_play(asset_get("sfx_oly_fspecial_dash"))
                }             
            break;
            case 2:
                if (!hitpause and has_hit_player) {
                    window = 4;
                    window_timer = 0;
                }
            break;
            case 3:
                if window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) {
                    move_cooldown[AT_FSPECIAL] = 60;
                    if free
                    {
                        set_state(PS_PRATFALL);
                    }
                }
            break;
            case 4:
                vsp *= 0.9;
                hsp *= 0.9;
                
                for (i = 0; i < array_length(fspecial_grabbed); i++) {
                    fspecial_grabbed[i].x = lerp(fspecial_grabbed[i].x, x, 0.2)
                    fspecial_grabbed[i].y = lerp(fspecial_grabbed[i].y, y - 30, 0.2)
                }
                break;
            case 5:
                vsp = 0;
                hsp = 0;
                
                for (i = 0; i < array_length(fspecial_grabbed); i++) {
                    fspecial_grabbed[i].x = lerp(fspecial_grabbed[i].x, x, 0.2)
                    fspecial_grabbed[i].y = lerp(fspecial_grabbed[i].y, y - 30, 0.2)
                }
                
            if !hitpause and window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) {
                create_hitbox(attack, 3, x, y)
                vsp = -7;
                spawn_hit_fx(x,y-30,fspecial_vfx)
            }
            break;
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