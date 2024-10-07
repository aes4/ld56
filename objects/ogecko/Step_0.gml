if op.mgarmour {
    if keyboard_check(ord("A")) {
        if vel < velcap {
            vel += velstart
            vel *= velinc
        }
        x -= vel + 5
        dir = 3
        sprite_index = sgeckol
    }
    if keyboard_check(ord("D")) {
        if vel < velcap {
            vel += velstart
            vel *= velinc
        }
        x += vel + 5
        dir = 1
        sprite_index = sgeckor
    }
}
if op.mgswim {
    move_towards_point(mouse_x, mouse_y, 5)
    if mouse_x < x {
        sprite_index = sgeckol
    } else { sprite_index = sgeckor }
    if y > 1620 {
        //i = audio_play_sound(as, 1, false)
        //audio_sound_gain(i, op.vol, 0)
        swimcount += 1
        if swimcount > 600 {
            op.swimstat += 1
            speed = 0
            room_goto(jungle)
            op.js = true
            op.mgswim = false
        }
    }
}
if op.mgrace {
    r = keyboard_check(ord("D"))
    l = keyboard_check(ord("A"))
    s = keyboard_check(vk_space)
    ss = keyboard_check_pressed(vk_space)
    c = keyboard_check(vk_shift)
    h = (r - l) * dh
    if ss {
        i = audio_play_sound(aj, 1, false)
        audio_sound_gain(i, op.vol, 0)
    }
    if thh {
        h = (r - l) * dh * hh
        hh += 1/400
        if c { hh -= 1/300 }
    }
    v += g
    if place_meeting(x, y + 1, owall) and !s and !c {
        if hh > 1 { hh -= 1/8 }
        thh = false
    }
    if place_meeting(x, y + 1, owall) and s and !c {
        v = um
        if hh > 1 { hh -= 1/22 }
        thh = false
    }
    if place_meeting(x, y + 1, owall) and s and c {
        v = um
        thh = true
    }
    d = sign(h)
    if place_meeting(x + h, y, owall) {
        while !place_meeting(x + d, y, owall) { x += d }
        h = 0
        if ss {
            v = um
            tb = true
            if hh > 2 { hh = 2 }
        }
    }
    d = sign(v)
    if place_meeting(x, y + v, owall) {
        while !place_meeting(x, y + d, owall) { y += d }
        v = 0
    }
    x += h
    y += v
    if x > 10000 {  // <- good number?
        i = audio_play_sound(ac, 1, false)
        audio_sound_gain(i, op.vol, 0)
        op.speedstat += 1
        room_goto(jungle)
        op.js = true
        op.mgrace = false
    }
}
if op.mgfort {
    if keyboard_check(ord("W")) {
        if vel < velcap {
            vel += velstart
            vel *= velinc
        }
        y -= vel
        dir = 0
        sprite_index = sgeckotu
    }
    if keyboard_check(ord("S")) {
        if vel < velcap {
            vel += velstart
            vel *= velinc
        }
        y += vel
        dir = 2
        sprite_index = sgeckotd
    }
    if keyboard_check(ord("A")) {
        if vel < velcap {
            vel += velstart
            vel *= velinc
        }
        x -= vel
        dir = 3
        sprite_index = sgeckotl
    }
    if keyboard_check(ord("D")) {
        if vel < velcap {
            vel += velstart
            vel *= velinc
        }
        x += vel
        dir = 1
        sprite_index = sgeckotr
    }
    if place_meeting(x, y, obook) {
        i = audio_play_sound(ac, 1, false)
        audio_sound_gain(i, op.vol, 0)
        op.collectedbooks += 1
        instance_destroy(obook)
        randx = random_range(0, 5760)
        randy = random_range(0, 3132)
        instance_create_layer(randx, randy, "Instances", obook)
    }
    if op.collectedbooks == 5 {
        op.fortstat += 1
        room_goto(jungle)
        op.js = true
        op.mgfort = false
    }
}