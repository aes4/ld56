if op.oof == false {
    if !place_meeting(x, y, ogecko) {
        move_towards_point(ogecko.x, ogecko.y, 30)
    } else {
        op.oof = true
        //instance_destroy(ogecko)
    }
}
if op.oof {
    move_towards_point(11520/2, -100, 30)
    ogecko.x = x - 100
    ogecko.y = y + 200
    if y < 0 {
        instance_destroy(ogecko)
        op.runs += 1
        instance_destroy(self)
        var i = op.armourstat
        var ii = op.swimstat
        var iii = op.speedstat
        var iiii = op.fortstat
        instance_destroy(op)
        room_goto(jungle)
        instance_create_layer(0, 0, "Instances", op)
        op.armourstat = i
        op.swimstat = ii
        op.speedstat = iii
        op.fortstat = iiii
        op.js = true
        op.oof = false
    }
}
/*
if op.oof {
    move_towards_point(11520/2, -100, 30)
    ogecko.x = x - 100
    ogecko.y = y + 200
    if y < 0 {
        instance_destroy(ogecko)
        op.runs += 1
        instance_destroy(self)
        room_goto(jungle)
        op.js = true
        op.oof = false
    }
}
*/