switch (my_hitboxID.attack)
{
    case AT_USPECIAL:
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
        {
        if my_hitboxID.hbox_num == 4
            sound_play(asset_get("sfx_blow_heavy1"))
        }
        if my_hitboxID.hbox_num == 1
            sound_play(asset_get("sfx_ori_seinhit_weak"))
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
        var i = 0;
        repeat 5
        {
            var xscale = random_func( (x*2) mod 4, 10, true) mod 2 == 0 ? 1 : -1;
            var yscale = random_func( (y*2) mod 4, 10, true) mod 2 == 0 ? 1 : -1;
            var new_particle = {
                frame : random_func( (x+y+i) mod 10, 3, true),
                frame_adv : 0,
                sprite : sprite_get("particles"),
                angle : 0,
                torque : 3,
                alpha : 2,
                alpha_decay : 0.05,
                hsp : random_func( (x-y+i) mod 10, 12, false) - 6,
                vsp : random_func( (y+i*2) mod 5, 9, false) - 10,
                hsp_decay : -0.05,
                grav : 0.4,
                x_pos : my_hitboxID.x,
                y_pos : my_hitboxID.y,
                x_scale : xscale,
                y_scale : yscale,
                layer : 1,
                shaded : 0
            }
            
            ds_list_add(particles, new_particle);
            i += 1;
        }
        if my_hitboxID.hbox_num == 1
        {
            sound_play(sound_get("sfx_melon"))
        }
    break;
    
    case AT_FSPECIAL:
    puddle.hstop = get_hitstop_formula(get_player_damage(hit_player_obj.player), my_hitboxID.damage, 9, .8, 0);
    break;
    
    case AT_BAIR:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8,1.1);
            sound_play(sound_get("sfx_stab"))
        }
    break;
}
  