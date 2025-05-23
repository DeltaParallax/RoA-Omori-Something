
// draw_debug_text(floor(x), floor(y), string(fear_amount))

// for (var i = 0; i < ds_list_size(particles); i++)
// {
//     var p = particles[| i];
//     if p.layer{
//         if p.shaded shader_start();
//         draw_sprite_ext(p.sprite, p.frame, p.x_pos, p.y_pos, p.x_scale, p.y_scale, p.angle, c_white, p.alpha)
//         if p.shaded shader_end();
//     }
// }


shader_start()
for (var f = 0; f < fear_amount; f++) {
    var frame = (get_gameplay_time() / 3) + 2*f
    draw_sprite_ext(sprite_get("fear_stack"), frame, x, y-30-(20*f),1,1,0,c_white,1)
}
shader_end()

// with pHitBox
// {
//     if (player_id == other and attack == AT_NSPECIAL)
//     {
//         if "angle" not in self
//         {
//             angle = 0;
//         }
        
//         angle = (angle + 10) mod 360;
//         with other
//         {
//             draw_sprite_ext(sprite_get("melon"),0,other.x,other.y,other.spr_dir,1,other.angle,c_white,1);
//         }
//     }
// }