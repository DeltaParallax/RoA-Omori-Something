if !fear_detonation_status.active exit;

if !fear_detonation_status.active or fear_detonation_status.timer < 0 exit;

with other_player_id {
    shader_start()
    draw_sprite(sprite_get("stun_trigger_vfx"), (other.fear_detonation_status.timer/ other.fear_detonation_status.max_time) * sprite_get_number(sprite_get("stun_trigger_vfx")), floor(other.x), floor(other.y)-floor(other.char_height/2) )
    shader_end()
}