if js {
    instance_create_layer(2800, 2400, "Instances", ogecko)
    instance_create_layer(1800, 1700, "Instances", obtarmour)
    instance_create_layer(2400, 1700, "Instances", obtswim)
    instance_create_layer(3000, 1700, "Instances", obtrace)
    instance_create_layer(3700, 1700, "Instances", obtfort)
    js = false
}
if cont {
    room_goto(mm)
    cont = false
}
if rv {
    //todo
}
if et {
    tt += 1 / room_speed
}
if start {
    et = true
    room_goto(jungle)
    js = true
    start = false
}
if setting {
    room_goto(settings)
    setting = false
}
if quit { game_end() }
if keyboard_check(vk_escape) { game_end() }
if inc {
    //todo
    inc = false
}
if dec {
    //todo
    dec = false
}
if tarmoursd {  // step delay
    randx = random_range(0, 5760)
    instance_create_layer(randx, -200, "Instances", orock)
    instance_create_layer(2800, 2600, "Instances", ogecko)
    mgarmour = true
    tarmoursd = false
}
if tarmour {
    //armourstat += 1   for debug
    instance_destroy(ogecko)
    room_goto(arm)
    tarmour = false
    tarmoursd = true
}
if tswimsd {  // step delay
    instance_create_layer(2800, 1000, "Instances", ogecko)
    instance_create_layer(0, 0, "Instances", owater)
    mgswim = true
    tswimsd = false
}
if tswim {
    //swimstat += 1   for debug
    instance_destroy(ogecko)
    room_goto(swim)
    tswim = false
    tswimsd = true
}
if tracesd {  // step delay
    instance_create_layer(1200, 2000, "Instances", ogecko)
    for (i = 0; i <= 200; i++) {
        randr = random_range(0, 8)
        randr = floor(randr)
        if randr = 7 { racelevel += 64 }
        if randr = 1 { racelevel -= 64 }
        instance_create_layer(32 + (64 * i), racelevel, "Instances", owall)
    }
    mgrace = true
    tracesd = false
}
if trace {
    //speedstat += 1   for debug
    instance_destroy(ogecko)
    room_goto(race)
    trace = false
    tracesd = true
}
if tfortsd {  // step delay
    mgfort = true
    instance_create_layer(2800, 1600, "Instances", ogecko)
    tfortsd = false
}
if tfort {
    //fortstat += 1   for debug
    instance_destroy(ogecko)
    room_goto(fort)
    tfort = false
    tfortsd = true
}
if win {
    if !instance_exists(ocredits) {
        instance_create_layer(0, 3200, "Instances", ocredits)
    }
    if ocredits.y > 0 {
        ocredits.y -= 5
    }
    // stats appear
}
/*
if go {
    if cammc > 0 {
        ogecko.x += 30
        cam = view_camera[0]
        camx = camera_get_view_x(cam)
        camy = camera_get_view_y(cam)
        camx += 30
        camera_set_view_pos(cam, camx, camy)
        cammc -= 30
    } else {
        if cammc > -2800 {
            ogecko.x += 30
            cammc -= 30
            if 2840 < cammc < 2885 {
                if armourstat > 3 {
                    if swimstat < 4 {
                        instance_create_layer(6300, 0, "Instances", opond)
                        if ogecko.y < 2800 {
                            ogecko.y += 9
                        }
                    } else {
                        instance_create_layer(10500, 10, "Instances", otree)
                    }
                }
            }
        } else {
            go = false
            if armourstat < 4 {
                // birdswoop
                instance_create_layer(11520, -100, "Instances", obird)
            } else if swimstat < 4 {
                // pond
            } else if speedstat < 4 || fort < 3 {
                // tree
            } else {
                // win
                if win == false {
                    room_goto(credits)
                    win = true
                    et = false
                }
            }
        }
    }
}
*/
if go {
    if cammc > 0 {
        ogecko.x += 30
        cam = view_camera[0]
        camx = camera_get_view_x(cam)
        camy = camera_get_view_y(cam)
        camx += 30
        camera_set_view_pos(cam, camx, camy)
        cammc -= 30
    } else {
        go = false
        if armourstat < 3 {
            // birdswoop
            instance_create_layer(11520, -100, "Instances", obird)
        } else if swimstat < 3 {
            // pond
            instance_create_layer(11520, -100, "Instances", obird)
        } else if speedstat < 3 || fort < 1 {
            // tree
            instance_create_layer(11520, -100, "Instances", obird)
        } else {
            // win
            if win == false {
                room_goto(credits)
                win = true
                et = false
            }
        }
    }
}
/*
if armourstat = 4 {
    instance_destroy(obtarmour)
}
if swimstat = 4 {
    instance_destroy(obtswim)
}
if speedstat = 4 {
    instance_destroy(obtrace)
}
if fortstat = 4 {
    instance_destroy(obtfort)
}
*/
if mgarmour {
    //todo
}
if mgswim {
    //todo
}
if mgrace {
    //todo
}
if mgfort {
    //todo
}
//show_debug_message()