if place_meeting(x, y, ogecko) {
    if 0 < count && count < 100 {
        ogecko.y += 1/200
    }
    if 100 < count && count < 110 {
        ogecko.sprite_index = sgeckoup
    }
    if 110 < count && count < 210 {
        ogecko.y -= 1/200
    }
    if count > 360 {
        room_goto(t)
        instance_destroy(self)
        instance_destroy(op)
        instance_create_layer(0, 0, "Instances", op)
        //op.js = true
        //instance_destroy(self)
    }
    if count > 360 {
        room_goto(mm)
    }
    count += 1
}