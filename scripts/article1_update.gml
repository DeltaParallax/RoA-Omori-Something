timer++;
/*
0 spawn
1 move
2 settle
3 attack
4 die
*/
switch state{
    case 0:
    image_index = timer/3
    if image_index >= 3{
        state = 1;
        timer = 0;
    }
    break;
    case 1:
    image_index = timer/5 % 3 + 3;
    if attack{
        state = 3;
        timer = 0;
    }
    if !instance_exists(collision_line(x + 44*player_id.spr_dir, y, x + 44*player_id.spr_dir, y + 16, asset_get("par_block"), 1, 1)) && !instance_exists(collision_line(x + 44*player_id.spr_dir, y, x + 44*player_id.spr_dir, y + 16, asset_get("par_jumpthrough"), 1, 1)){
        image_index = 22;
        state = 5;
        timer = 5;
        player_id.window = 3;
        player_id.window_timer = 0;
    }
    break;
    case 2:
    if image_index > 6 image_index = ((9 - timer)/3) + 6;
    else{
        state = 1;
        timer = 0;
    }
    break;
    case 3:
    if image_index < image_number - 1 image_index = (timer/3) + 6;
    else image_index = 9;
    if image_index >= 9 && attack{
        image_index = 0;
        state = 4;
        timer = 0;
    }
    break;
    case 4:
    image_index = timer/3;
    if timer == 28 sound_play(asset_get("sfx_swipe_medium1"));
    if timer == 30 && box == noone box = create_hitbox(AT_FSPECIAL, 1, x + 5, y - 20);
    if image_index >= 21{
        state = 5;
        timer = 0;
    }
    break;
    case 5:
    image_index = timer/3 + 21;
    if image_index >= 24{
        instance_destroy(self);
        exit;
    }
    break;
}

sprite_index = sprite_get("puddle" + string((state > 3) + 1));
hsp = (state == 1? hsp + .2 * player_id.spr_dir: 0);