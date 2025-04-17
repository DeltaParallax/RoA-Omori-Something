state = PS_SPAWN;
state_timer = 0;
lock_state = 0;
depth = player_id.depth - 2
sprite_index = sprite_get("stranger_nspec")
state_info = ds_map_create()

hitbox = noone;
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

max_speed = 10;

player_id.x -= 20000
closest_player = instance_nearest(x,y,asset_get("oPlayer"))
player_id.x += 20000