//MINI attack_update to include the case window_timer = 0;
update_particles()

with (hit_fx_obj)
{
    if hit_fx == other.fspecial_vfx or hit_fx == other.vfx_dattack_sweet or hit_fx == other.fspecial_splash_vfx  {
        depth = other.depth + 1
    }
    
    if (sprite_index == sprite_get("hfx_watermelon") and spr_dir == -1 and "turned" not in self)
    {
        turned = true;
        spr_dir = 1;
    }
}

with oPlayer {
    if self == other continue
    
    if state == PS_DEAD or state == PS_RESPAWN {
        fear_detonation_status.timer = -1;
        fear_detonation_status.active = false;
    }
    
    if !fear_detonation_status.active continue;
    
    fear_detonation_status.timer = min(fear_detonation_status.timer+!hitpause, fear_detonation_status.max_time)
    
    if fear_detonation_status.timer == 0 and !hitpause {
        sound_play(asset_get("sfx_absa_concentrate"))
    }
    
    if fear_detonation_status.timer == 3 and !hitpause {
        sound_play(other.windup_sound, false, noone, 1.2, 1.3)
    }
    
    if fear_detonation_status.timer == fear_detonation_status.max_time {
        fear_detonation_status.timer = -1;
        fear_detonation_status.active = false;
        
        with other create_hitbox(AT_DSPECIAL, 4, other.x,other.y)
    }
}

if (is_attacking())
{
    switch (attack)
    {
        case AT_NSPECIAL:
            if window == 4 and window_timer == 0 and !hitpause {
                nspecial_obj = instance_create(x+(18*spr_dir),y-6,"obj_article1")
                nspecial_obj.spr_dir = spr_dir;
            }
        break;
        case AT_FSPECIAL:
            if window == 5 and window_timer % 3 == 0 and !hitpause {
                create_hitbox(attack, 2, x, y)
            }
        break;
        case AT_DATTACK:
        switch (window)
        {
            case 2:
                if window_timer == 0 and !hitpause
                {
                    spr_angle = -dattack_angle_difference*spr_dir;
                    hsp = lengthdir_x(dattack_active_speed*spr_dir, dattack_angle_difference)
                    vsp = -lengthdir_y(dattack_active_speed, dattack_angle_difference)
                    
                    var center_y = (hurtboxID.bbox_bottom - hurtboxID.bbox_top)/2
                    draw_x = center_y*dsin(spr_angle);
                    draw_y = -(center_y  - center_y*dcos(spr_angle));
                    
                    var i = 1;
                    var hbox_pos = [36, -48];
                    
                    repeat (2)
                    {
                        var hitbox = create_hitbox(attack, i, x, y);
                        
                        if (dattack_angle_difference != 0 and i == 1)
                        {
                            hitbox.x_pos = spr_dir * hbox_pos[0];
                            hitbox.y_pos = hbox_pos[1];
                        }
                        
                        i++;
                        
                    }
                    

                    
                    //var i = 1;
                    //var center_x = 0;
                    //repeat (2)
                    //{
                    //    var hitbox = create_hitbox(attack, i++, x, y)
                    //    var x_diff = (abs(hitbox.x_pos) - center_x)*spr_dir;
                    //    var y_diff = hitbox.y_pos - center_y;

                    //    hitbox.x_pos = x_diff*dcos(spr_angle) + (center_x*spr_dir);
                    //    hitbox.y_pos = y_diff*dcos(spr_angle) + center_y;
                    //    
                    //   print(`${hitbox.x_pos} , ${hitbox.y_pos}`)
                    //}
                }
                break;
            case 3:
                spr_angle = lerp(spr_angle, 0, 0.1)
                
                if abs(spr_angle) < 2
                {
                    spr_angle = 0;
                }
            break;
        }
        break;
    }
}

#define update_particles()
var i = 0;
while (i < ds_list_size(particles))
{
    particles[| i].vsp += particles[| i].grav;
    particles[| i].hsp = max((abs(particles[| i].hsp) + particles[| i].hsp_decay), 0)*sign(particles[| i].hsp);
    particles[| i].alpha -= particles[| i].alpha_decay;
    
    particles[| i].x_pos += particles[| i].hsp;
    particles[| i].y_pos += particles[| i].vsp;
    particles[| i].frame += particles[| i].frame_adv;
    
    particles[| i].angle = (particles[| i].angle + particles[| i].torque) mod 360;
    if (particles[| i].alpha == 0) || (particles[| i].frame_adv != 0 && particles[| i].frame >= sprite_get_number(particles[| i].sprite))
    {
        ds_list_delete(particles, i);
    }
    
    i++;
}

#define is_attacking()
return state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND;