//this is temporary, it was done to allow dodges and therefore wavedashing for the trailer
if state == PS_AIR_DODGE sprite_index = sprite_get("doublejump")
if state == PS_PRATLAND{
    sprite_index = sprite_get("pratland");
    image_index = image_number*state_timer/prat_land_time;
}