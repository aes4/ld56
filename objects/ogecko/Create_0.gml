depth = -5
swimcount = 0
dir = 2
vel = 0
velstart = 0.1
velcap = 7
velinc = 1 + (1/3)
if op.mgfort {
    randx = random_range(0, 5760)
    randy = random_range(0, 3132)
    instance_create_layer(randx, randy, "Instances", obook)
}
g = 0.2  // gravity
h = 0  // horizontal
v = 0  // vertical
dh = 4  // default horizontal
um = -7  // upwards momentum
//b = 0  // bounce
//tb = false
hh = 1
thh = false
vy = 0
vx = 0
r = false
l = false
s = false
ss = false
c = false