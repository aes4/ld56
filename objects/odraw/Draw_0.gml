if instance_exists(ogecko) && op.mgarmour == false && op.mgswim == false {
    draw_text_transformed(ogecko.x + 320, ogecko.y - 300, "   stats:", 5, 5, 0)
    draw_text_transformed(ogecko.x + 320, ogecko.y - 200, "armour: " + string(op.armourstat) + "/3", 6, 6, 0)
    draw_text_transformed(ogecko.x + 320, ogecko.y - 100, "swimming:" + string(op.swimstat) + "/3", 6, 6, 0)
    draw_text_transformed(ogecko.x + 320, ogecko.y - 0, "speed:" + string(op.speedstat) + "/3", 6, 6, 0)
    draw_text_transformed(ogecko.x + 320, ogecko.y + 100, "fortitude:" + string(op.fortstat) + "/1", 6, 6, 0)
}
if instance_exists(ocredits) {
    if ocredits.y < 100 {
        m = floor(op.tt div 60)
        s = op.tt mod 60
        draw_text_transformed(2880 + 256, 1620, "time: " + string(m) + ":" + string_format(s, 2, 0), 8, 8, 0)
    }
}