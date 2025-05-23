if state == PS_ATTACK_GROUND && attack == AT_USTRONG{
    shader_start();
    draw_sprite_ext(sprite_get("ustrong_back"), image_index, x, y, 1, 1, 0, c_white, 1);
    shader_end();
}

for (var i = 0; i < ds_list_size(particles); i++)
{
    var p = particles[| i];
    if !p.layer{
        if p.shaded shader_start();
        draw_sprite_ext(p.sprite, p.frame, p.x_pos, p.y_pos, p.x_scale, p.y_scale, p.angle, c_white, p.alpha)
        if p.shaded shader_end();
    }
}