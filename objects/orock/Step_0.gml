if !iscollected {
    if y < (3240 + 200) {
        y += 15
        if op.mgarmourscore < 5 {
            if place_meeting(x, y, ogecko) {
                iscollected = true
                op.collectedrocks += 1
                op.mgarmourscore += 1  // using way too many vars but idc
                y = ogecko.y - (op.collectedrocks * 100)
                x = ogecko.x
                randx = random_range(0, 5760)
                instance_create_layer(randx, -200, "Instances", orock)
            }
        } else {
            instance_destroy(orock)  // ik
            instance_destroy(orock)
            instance_destroy(orock)
            instance_destroy(orock)
            instance_destroy(orock)
            room_goto(jungle)
            op.js = true
            op.armourstat += 1
            op.mgarmour = false
        }
    } else {
        randx = random_range(0, 5760)
        instance_create_layer(randx, -200, "Instances", orock)
        instance_destroy(self)
    }
} else {
    x = ogecko.x
}