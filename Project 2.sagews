
reset()


var('x,y,z')
f = sqrt(x^2 + y^2 + z^2)
g = x^2 + y^2 + 9*z^2  == 25
h = x + 3*y - 2*z == 0

F(x,y,z) = f
G(x,y,z) = g.lhs()
H(x,y,z) = h.lhs()
F.show()
G.show()
H.show()


gradF = F.diff()
gradG = G.diff()
gradH = H.diff()
F
G
H


var('w')
var('u')
eqs = [gradF(x,y,z)[k] - w*gradG(x,y,z)[k]  == 0 for k in range(3)]
eqs2 = [gradF(x,y,z)[k] - u*gradH(x,y,z)[k]  == 0 for k in range(3)]
eqs.append(g)
eqs2.append(h)



sols = solve(eqs,[x,y,z,w])
sols2 = solve(eqs,[x,y,z,u])
print (sols)
print('found', len(sols),'solutions')
print (sols2)
print('found', len(sols2),'solutions')



for i in range(len(sols)):
    print(i, ":", sols[i],":",f.subs(sols[i]))

#constraint 2 is a contradiction which gives me the answer above


#Problem 2
reset()

var("r, rate")
f = 4/3 * pi * r^3 * rate
change = 10
f = derivative(f,r)
f = f.subs(r = 3) #set radius to 3
eqs = [change == f]
eqs
sols = solve(eqs, rate)
sols

8 * pi * 3 * 5/18/pi



#Problem 3
reset()

x = var('x')
y = function('y')(x)
y


nY = y.subs(x = 0) == 1
nY.show()

dy = derivative(nY)
dy.show()
ddy = derivative(dy)
eqs = ddy == x^2 * y + (e^x * dy)
eqs.show()

tf = taylor(eqs, x, 0, 5)
tf.show()










