switch (my_hitboxID.attack)
{
    case AT_DATTACK:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.9,1.1);
        }
    break;
    case AT_FSTRONG:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8,1.1);
        }
    break;
}