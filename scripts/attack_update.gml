//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//others
switch (attack)
{
    case AT_DATTACK:
        if (window == 1 and window_timer == 4)
        {
            sound_play(asset_get("sfx_ori_uptilt_single"), false, noone,1,0.8);
            //sound_play(asset_get("sfx_swipe_medium2"), false, noone);
        }
    break;
    case AT_FTILT:
        if (window == 1 and window_timer == 9)
        {
            sound_play(asset_get("sfx_zetter_downb"), false, noone);
        }
    break;
}
