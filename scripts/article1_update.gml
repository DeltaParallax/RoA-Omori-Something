if x < 0 or x > room_width or y < 0 or y > room_height {
    state = PS_DEAD
    state_timer = 0
    
    if instance_exists(hitbox) {
        instance_destroy(hitbox)
    }
}


switch state {
    case PS_IDLE:
        if instance_exists(hitbox) {
            hitbox.x = x;
            hitbox.y = y - 30
        } else {
            state = PS_DEAD
            state_timer=0
        }
        hsp = lerp(hsp, max_speed*spr_dir, 0.1)
        
        // dir = point_direction(x, y, floor(closest_player.x), floor(closest_player.y - (closest_player.char_height / 2)));
        // vsp = lerp(vsp, lengthdir_y(4 + (2*opponent_has_full_status),dir), 0.1)
    break;
    case PS_DEAD:
        hsp *= 0.93;
        vsp *= 0.93;
    break;
}


state_timer+=1
image_index = ((state_timer / state_info[? state].length) * state_info[? state].frames) + state_info[? state].frame_start;

if state_timer >= state_info[? state].length {
    if !state_info[? state].loop {
        switch state {
            case PS_SPAWN:
                state = PS_IDLE
                hitbox = create_hitbox(AT_NSPECIAL, 1, x,y-30)
                hitbox.linked_article = self
                if something_has_full_status {
                    hitbox.damage += 2;
                    hitbox.hit_flipper = 7
                    hitbox.extra_hitpause = 15;
                }
            break;
            case PS_DEAD:
                instance_destroy()
            break;
        }
    }
    
    state_timer = 0;
}