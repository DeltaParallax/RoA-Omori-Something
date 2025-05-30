hurtbox_spr = sprite_get("something_idle_hurtbox");
crouchbox_spr = sprite_get("something_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 80;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .14;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 12;
dash_turn_accel = 1;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

djump_accel = -2.3;
djump_accel_start_time = 4;
djump_accel_end_time = 10;
jump_start_time = 5;
jump_speed = 8.75;
short_hop_speed = 4;
djump_speed = -0.6;
leave_ground_max = 7.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .55; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 24;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .325;
hitstun_grav = .45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 9;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 1;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_absa_jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

dspecial_sound = noone;
dspecial_attack_cache = false;
dspecial_timer = 0;
dspecial_airdodge_threshold = 18;

fear_trigger = ds_map_create()
fear_trigger[? AT_NSPECIAL] = 1
fear_trigger[? AT_FSPECIAL] = 1
fear_trigger[? AT_DSPECIAL] = 1
fear_trigger[? AT_DAIR] = 1
fear_trigger[? AT_UAIR] = 1
fear_trigger[? AT_FSTRONG] = 1
fear_trigger[? AT_BAIR] = 1
fear_trigger[? AT_USTRONG] = 2
set_victory_theme(sound_get("victory"))

set_victory_bg(sprite_get("winscreen"))

vfx_dattack_sweet = hit_fx_create(sprite_get("dattack_hitfx"), 24);
vfx_watermelon = hit_fx_create(sprite_get("beheaded"), 28);
dattack_angle_difference = 0;
dattack_active_speed = 12;

particles = ds_list_create();

//fspecial
fspecial_grabbed = []
fspecial_vfx = hit_fx_create(sprite_get("fspecial_explosion"), 24);
fspecial_splash_vfx = hit_fx_create(sprite_get("fspecial_hit_splash"), 28);

grav_jump = 0
nspecial_obj = noone;

uspecial_dir = 90;


windup_sound = sound_get("sfx_delta_windup")

fear_amount = 0;
max_fear = 3;
