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
    case AT_UAIR:
    case AT_FSTRONG:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_blow_heavy2"),false,noone,0.8,1.1);
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
                y_scale : yscale
            }
            
            ds_list_add(particles, new_particle);
            i += 1;
        }
    
    break;
    
    case AT_BAIR:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_blow_heavy1"),false,noone,0.8,1.1);
        }
    break;
}