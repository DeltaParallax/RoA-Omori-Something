//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//others
switch (attack)
{
    
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
}
