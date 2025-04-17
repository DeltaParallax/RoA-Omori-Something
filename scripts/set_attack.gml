switch (attack)
{
    case AT_USPECIAL:
    uspecial_dir = 90;
    break;
    case AT_DATTACK:
    dattack_angle_difference = 0;
    break;
    case AT_FSPECIAL:
    set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3)
    fspecial_grabbed = [];
    break;
    case AT_DSTRONG:
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get(string(spr_dir) + "dstrong"));
    break;
}