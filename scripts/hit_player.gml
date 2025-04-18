if (my_hitboxID.attack == AT_FSTRONG or my_hitboxID.attack == AT_USTRONG or my_hitboxID.attack == AT_DSTRONG or (my_hitboxID.attack == AT_DSPECIAL and my_hitboxID.hbox_num == 1)) {
        if hit_player_obj.fear_amount == hit_player_obj.max_fear { 
            hit_player_obj.fear_detonation_status.active = true;
            hit_player_obj.fear_detonation_status.timer = -14
        }
}

var exempt = false;
switch (my_hitboxID.attack)
{
    case AT_USPECIAL:
        if hit_player_obj.fear_amount == hit_player_obj.max_fear { 
            hit_player_obj.fear_detonation_status.active = true;
            hit_player_obj.fear_detonation_status.timer = -20
        }
    
        sound_play(asset_get("sfx_blow_heavy1"));
        sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.6,0.9);
        sound_play(asset_get("sfx_ori_energyhit_heavy"),false,noone,0.6,1.1);
    break;
    case AT_FAIR:
        if my_hitboxID.hbox_num == 5
        {
            hit_player_obj.x = lerp(hit_player_obj.x, x + (40*spr_dir), 0.1)
            hit_player_obj.y = lerp(hit_player_obj.y, y - 10, 0.1)
        }
        
        if my_hitboxID.hbox_num == 4 {
            sound_play(asset_get("sfx_blow_heavy1"))
        }
    break;
    case AT_FSPECIAL:
        if hit_player_obj.fear_amount == hit_player_obj.max_fear {
            set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
            array_push(fspecial_grabbed, hit_player_obj);
            hit_player_obj.fear_amount = 0
            exempt = true
        }

    break;
    case AT_DATTACK:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_ori_energyhit_medium"),false,noone,0.9,1.1);
        }
    break;
    case AT_UAIR:
         if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8,1.1);
        }
    break;
        
    case AT_FSTRONG:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8,1.1);
            sound_play(sound_get("sfx_big_stab"),false,noone,0.3,0.87);
            sound_play(sound_get("sfx_stab_pierce"),false,noone,0.8,1);
        }
    break;
    case AT_DSTRONG:
        if my_hitboxID.hbox_num < 3 sound_play(asset_get("sfx_hod_dstrong_hit"),false,noone,1,1.1);
    break;
    case AT_USTRONG:
    sound_play(sound_get("sfx_stab_pierce"),false,noone,1,1.1);
        if my_hitboxID.hbox_num == 2
        {
            sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8,1.1);
            sound_play(sound_get("sfx_big_stab"),false,noone,0.8,1.1);
        }
    break;
    
    case AT_NSPECIAL:
        if my_hitboxID.hbox_num == 1
        {
            nspecial_obj.state = PS_DEAD;
            nspecial_obj.state_timer = 0;
            sound_play(sound_get("sfx_melon"))
        }
    break;
    
    case AT_BAIR:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8,1.1);
            sound_play(sound_get("sfx_stab"))
        }
    break;
}
if ds_map_exists(fear_trigger, my_hitboxID.attack) and fear_trigger[? my_hitboxID.attack] == my_hitboxID.hbox_num and !exempt{
    hit_player_obj.fear_amount = min(hit_player_obj.fear_amount+1, hit_player_obj.max_fear);
    hit_player_obj.fear_player = self;    
}