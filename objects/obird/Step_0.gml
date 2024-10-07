if op.oof == false {
    if !place_meeting(x, y, ogecko) {
        move_towards_point(ogecko.x, ogecko.y, 30)
    } else {
        op.oof = true
        instance_destroy(ogecko)
    }
}
if op.oof {
    move_towards_point(11520/2, -100, 30)
    if y < 0 {
        op.runs += 1
        instance_destroy(self)
        room_goto(jungle)
        op.js = true
    }
}