/* quick tdl
work on deaths and win
death from pond breaks game
pond is done though next tree
*/
randomize()
rv = false
cont = false
start = false
setting = false
quit = false
inc = false
dec = false
debug = false
back = false
go = false
cammc = 5760  // cameramovementcount
cam = undefined
camx = undefined
camy = undefined
tarmour = false
tarmoursd = false
tswim = false
tswimsd = false
trace = false
tracesd = false
tfort = false
tfortsd = false
armourstat = 0
swimstat = 0
speedstat = 0
fortstat = 0
oof = false
mgarmour = false
mgarmourscore = 0
collectedrocks = 0 // can use an array here put using array_push is too long too type lol
collectedbooks = 0
mgswim = false
mgrace = false
mgfort = false
win = false
randx = 0
randy = 0
js = false
runs = 0
// why did I have such an insane scope, 5 hrs of coding incomming! 389 lines of code later, ty brain
// update estimating around 7 hrs of coding and 500 lines
// would have made infinite world gen for the fort minigame cause y not but maybe next time around
dir = 2
vel = 0
velstart = 0.1
velcap = 7
velinc = 1 + (1/3)
racelevel = 2600  // game break possible here but I'll call it a feature... maybe I'll name it "rng"
randr = 0
tt = 0
et = false