︠38f67f24-b9ca-41dd-898d-d210bded8124s︠
reset()
︡93def7e8-cd4f-4f9c-9fcc-6971bb108fd7︡{"done":true}
︠360df9e3-7574-4bb2-a49f-b2d374edc480s︠
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
︡2afec57f-bf88-43b6-abca-ee9d29011512︡{"stdout":"(x, y, z)\n"}︡{"html":"<div align='center'>$\\displaystyle \\left( x, y, z \\right) \\ {\\mapsto} \\ \\sqrt{x^{2} + y^{2} + z^{2}}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left( x, y, z \\right) \\ {\\mapsto} \\ x^{2} + y^{2} + 9 \\, z^{2}$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left( x, y, z \\right) \\ {\\mapsto} \\ x + 3 \\, y - 2 \\, z$</div>"}︡{"done":true}
︠78504d94-0a2c-4f08-90e3-76c7cf4010c9s︠
gradF = F.diff()
gradG = G.diff()
gradH = H.diff()
F
G
H

︡861ea983-4f78-45b6-8dc7-a2f2710f83c5︡{"stdout":"(x, y, z) |--> sqrt(x^2 + y^2 + z^2)\n"}︡{"stdout":"(x, y, z) |--> x^2 + y^2 + 9*z^2\n"}︡{"stdout":"(x, y, z) |--> x + 3*y - 2*z\n"}︡{"done":true}
︠831227b5-2adc-4d41-9a9c-e4f0a1c709db︠
var('w')
var('u')
eqs = [gradF(x,y,z)[k] - w*gradG(x,y,z)[k]  == 0 for k in range(3)]
eqs2 = [gradF(x,y,z)[k] - u*gradH(x,y,z)[k]  == 0 for k in range(3)]
eqs.append(g)
eqs2.append(h)

︡99b33678-bc7f-480d-a1e7-1fd66a2c17f7︡{"stdout":"w\n"}︡{"stdout":"u\n"}︡{"done":true}
︠3b97af7e-8bdc-46e6-bf0c-9e2c296375fas︠

sols = solve(eqs,[x,y,z,w])
sols2 = solve(eqs,[x,y,z,u])
print (sols)
print('found', len(sols),'solutions')
print (sols2)
print('found', len(sols2),'solutions')

︡f1c64e86-ba36-494e-8841-92f1dbe0019e︡{"stdout":"[\n[x == r3, y == sqrt(-r3^2 + 25), z == 0, w == (1/10)],\n[x == r4, y == -sqrt(-r4^2 + 25), z == 0, w == (1/10)],\n[x == 5, y == 0, z == 0, w == (1/10)],\n[x == -5, y == 0, z == 0, w == (1/10)],\n[x == 0, y == 0, z == (5/3), w == (1/30)],\n[x == 0, y == 0, z == (-5/3), w == (1/30)]\n]\n"}︡{"stdout":"found 6 solutions\n"}︡{"stdout":"[\n\n]\n"}︡{"stdout":"found 0 solutions\n"}︡{"done":true}
︠dbfd7275-f05d-4693-ada0-f13e21dd3b74s︠
for i in range(len(sols)):
    print(i, ":", sols[i],":",f.subs(sols[i]))
︡3ff8bebb-f831-4fd7-9271-cf231a4c3bab︡{"stdout":"0 : [x == r3, y == sqrt(-r3^2 + 25), z == 0, w == (1/10)] : 5\n1 : [x == r4, y == -sqrt(-r4^2 + 25), z == 0, w == (1/10)] : 5\n2 : [x == 5, y == 0, z == 0, w == (1/10)] : 5\n3 : [x == -5, y == 0, z == 0, w == (1/10)] : 5\n4 : [x == 0, y == 0, z == (5/3), w == (1/30)] : 5/3\n5 : [x == 0, y == 0, z == (-5/3), w == (1/30)] : 5/3\n"}︡{"done":true}
︠951cb771-aa8d-44a2-b3f3-9c39aa95b333︠
#constraint 2 is a contradiction which gives me the answer above


#Problem 2
reset()
︡41569992-1776-4451-a003-b775681e3800︡{"done":true}
︠66170d79-f8b4-4b60-8daf-ca3a8bc5cc45s︠
var("r, rate")
f = 4/3 * pi * r^3 * rate
change = 10
f = derivative(f,r)
f = f.subs(r = 3) #set radius to 3
eqs = [change == f]
eqs
sols = solve(eqs, rate)
sols
︡a8388f28-f397-42ea-9e89-0473e2306794︡{"stdout":"(r, rate)\n"}︡{"stdout":"[10 == 36*pi*rate]\n"}︡{"stdout":"[rate == 5/18/pi]\n"}︡{"done":true}
︠88490fa1-04b8-43ad-ac4c-9ed7b21bea37s︠
8 * pi * 3 * 5/18/pi
︡eb0a6528-0941-47db-994f-0a9093934116︡{"stdout":"20/3\n"}︡{"done":true}
︠dcde243c-71b9-4c35-8a1d-58174be0a1ees︠


#Problem 3
reset()
︡17abb0ed-aa2b-456a-86fb-2fbcb0652f47︡{"done":true}
︠5ecfff85-f2ec-47e6-a689-5e75ab20ff5as︠
x = var('x')
y = function('y')(x)
y
︡f4140e52-71cc-4293-898b-78341951bbf0︡{"stdout":"y(x)\n"}︡{"done":true}
︠9920714c-5548-4e87-b80d-8677ad02e3e2s︠

nY = y.subs(x = 0) == 1
nY.show()
︡0f915127-0449-46e2-9b18-52b4c2d05b68︡{"html":"<div align='center'>$\\displaystyle y\\left(0\\right) = 1$</div>"}︡{"done":true}
︠a200d595-e226-4ac4-a034-22e260739dd8s︠
dy = derivative(nY)
dy.show()
ddy = derivative(dy)
eqs = ddy == x^2 * y + (e^x * dy)
eqs.show()
︡2a1a5d54-449b-4840-a437-cd254071b150︡{"html":"<div align='center'>$\\displaystyle 0$</div>"}︡{"html":"<div align='center'>$\\displaystyle 0 = x^{2} y\\left(x\\right)$</div>"}︡{"done":true}
︠0277ec54-7ab2-4ec3-a7e7-8933643554d0s︠
tf = taylor(eqs, x, 0, 5)
tf.show()
︡e5dcd8c7-c18b-4737-9c40-c69b17bd271c︡{"html":"<div align='center'>$\\displaystyle 0 = \\frac{1}{6} \\, x^{5} \\mathrm{D}_{0, 0, 0}\\left(y\\right)\\left(0\\right) + \\frac{1}{2} \\, x^{4} \\mathrm{D}_{0, 0}\\left(y\\right)\\left(0\\right) + x^{3} \\mathrm{D}_{0}\\left(y\\right)\\left(0\\right) + x^{2} y\\left(0\\right)$</div>"}︡{"done":true}









