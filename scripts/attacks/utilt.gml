set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT,2);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -76);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 145);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM, 1);