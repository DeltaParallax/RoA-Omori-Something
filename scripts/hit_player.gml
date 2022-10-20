switch (my_hitboxID.attack)
{
    case AT_FAIR:
        if my_hitboxID.hbox_num == 5
        {
            hit_player_obj.x = lerp(hit_player_obj.x, x + (40*spr_dir), 0.1)
            hit_player_obj.y = lerp(hit_player_obj.y, y - 10, 0.1)
        }
    break;
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