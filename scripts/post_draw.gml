for (var i = 0; i < ds_list_size(particles); i++)
{
    var p = particles[| i];
    draw_sprite_ext(sprite_get("particles"), p.frame, p.x_pos, p.y_pos, p.x_scale, p.y_scale, p.angle, c_white, p.alpha)
}

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