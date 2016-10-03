READFILE = open("JarTest.dat", 'r')

NAME_EXPERIMENTS = ["Cr20rpm", "Cr40rpm", "Fe20rpm", "Fe40rpm", "Ni20rpm", "Ni40rpm", "Zn20rpm", "Zn40rpm"]

EXPERIMENTS = dict()
for Exp in NAME_EXPERIMENTS:
    EXPERIMENTS[Exp] = ([], [])

for line in READFILE:
    valor = line.split()
    i = 0
    while len(valor) > 0:
        (x, y) = EXPERIMENTS[NAME_EXPERIMENTS[i]]
        x.append(int(valor.pop(0))) #assign values in x
        y.append(int(valor.pop(0))) #assign values in y
        i += 1 #increment i (experiment)
READFILE.close()

jsfile = open("JarTest.js", 'w')

print >>jsfile, "var EXPERIMENTS = {}"
for name in NAME_EXPERIMENTS:
    (XEXP, YEXP) = EXPERIMENTS[name]
    #print >>jsfile, str("EXPERIMENTS[%s]=[[" % name),
    s = str("EXPERIMENTS['%s']=[[" % name)
    for i in xrange(len(XEXP)):
        if i != len(XEXP) - 1:
            s += str(XEXP[i]) + ","
            #print >>jsfile, XEXP[i], ",",
        else:
            s += str(XEXP[i]) + "],"
            #print >>jsfile, XEXP[i], "];"

    s+= "["
    #print >>jsfile, ",[",
    for i in xrange(len(YEXP)):
        if i != len(YEXP) - 1:
            s += str(YEXP[i]) + ","
            #print >>jsfile, YEXP[i], ",",
        else:
            s += str(YEXP[i]) + "]];"
            #print >>jsfile, YEXP[i], "];"
    s += '\n'
    print >>jsfile, s
