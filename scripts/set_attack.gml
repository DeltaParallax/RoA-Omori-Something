switch (attack)
{
    case AT_DATTACK:
    dattack_angle_difference = 0;
    break;
    case AT_FSPECIAL:
    tap_timer = 0;
    tap = 0;
    break;
    case AT_DSTRONG:
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get(string(spr_dir) + "dstrong"));
    break;
}