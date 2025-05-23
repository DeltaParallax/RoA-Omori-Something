state = PS_SPAWN;
state_timer = 0;
lock_state = 0;
depth = player_id.depth - 2

state_info = ds_map_create()

hitbox = noone;

something_has_full_status = player_id.fear_amount == player_id.max_fear
// with oPlayer {
//     if self == other.player_id or fear_player != other.player_id or fear_amount != max_fear continue;
    
//     other.opponent_has_full_status = true
// }


if something_has_full_status {
    sprite_index = sprite_get("stranger_fearapplied")
    state_info[? PS_SPAWN] = {
        length : 24,
        frame_start : 1,
        frames : 8,
        loop: false
    }
    
    state_info[? PS_IDLE] = {
        length : 35,
        frame_start : 9,
        frames : 7,
        loop: true
    }
    
    state_info[? PS_DEAD] = {
        length : 20,
        frame_start : 17,
        frames : 5,
        loop: false
    }
}
else {
    sprite_index = sprite_get("stranger_nspec")
    state_info[? PS_SPAWN] = {
        length : 20,
        frame_start : 1,
        frames : 6,
        loop: false
    }
    
    state_info[? PS_IDLE] = {
        length : 24,
        frame_start : 8,
        frames : 6,
        loop: true
    }
    
    state_info[? PS_DEAD] = {
        length : 20,
        frame_start : 15,
        frames : 5,
        loop: false
    }
}

max_speed = 7;

// player_id.x -= 20000
// closest_player = instance_nearest(x,y,asset_get("oPlayer"))
// player_id.x += 20000