///takeDamage(damage)
damage = argument[0];
with(obj_player) {
    if(!tookDamage && !global.indestructible) {
        if(global.oneDamage) {
            health--;
        }
        else {
            health -= other.damage;
        }
        instance_create(0, 0, eff_shakeSoft);
        tookDamage = true;
        audio_play_sound(snd_fallDamage, 11, false);
        alarm[2] = room_speed;
    }
}
