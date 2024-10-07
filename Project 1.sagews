︠f70d6022-6e85-4384-bc23-b92854ba0d4bs︠
reset()
import random

def generate_random_points(n):
    L = []
    while len(L) < n:
        numX = random.uniform(-1,1) #range is (-1,1) so that the length of the square would be 2 giving an area of 4 determined in the project setup
        numY = random.uniform(-1,1)
        randTuple = (numX, numY)
        #if testTuple not in L: <- not sure if it had to be perfectly random and exclusive or not
        L.append(randTuple)
    return(L)

testFunc = generate_random_points(5)
testFunc
︡765debdf-f1d5-4ca3-a0fa-bab4f3ab449b︡{"stdout":"[(0.8923757878542848, 0.31873684401185365), (0.6549422031487178, -0.6497958621192381), (0.8400831155314947, -0.9712888341776782), (-0.6100900567874661, -0.09207227610840851), (-0.36404102263920657, 0.7975860698612018)]\n"}︡{"done":true}
︠9c86acbc-5f70-4739-82f2-b0ea9529e709s︠

def estimate_pi(n):
    randPoints = generate_random_points(n)
    circPoints = 0
    squarePoints = n #All points are within the square
    for i in range (len(randPoints)):
        if (randPoints[i][0]^2) + (randPoints[i][1]^2) <= 1: #Squares both the x and the y | compares it to one as the radius is 1 | if less than or equal to 1 it means that it is on or in the circle
            circPoints += 1
    numPi = (4*circPoints)/squarePoints #Takes each randomized tuple and checks to see if they are within the circle
    return(numPi.n())

testG = estimate_pi(10000)
testG

︡33842256-3c5b-4e2d-abf0-e829007f80e8︡{"stdout":"3.16680000000000\n"}︡{"done":true}
︠b6068843-13ee-4413-b7ae-012c55e9fe0as︠

def average_number_of_points_needed():
    real = RealField(12)
    counter =9999
    quartCheck = 0
    while quartCheck < 15:
        quartCheck = 0
        counter += 1
        
        for i in range(20): #Runs the same number of random points 20 times to check if it passes at least 75% | If not move on reset quartCheck and increment counter
            nApprox = estimate_pi(counter)
            if real(nApprox) == real(pi):
                quartCheck += 1
                
    return counter

test = average_number_of_points_needed()
test
︡b00289d1-99d6-48a9-ac6d-fe7a80d2d8ae︡{"stderr":"Error in lines 13-13\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"\", line 9, in average_number_of_points_needed\n  File \"\", line 2, in estimate_pi\n  File \"\", line 5, in generate_random_points\n  File \"src/cysignals/signals.pyx\", line 310, in cysignals.signals.python_check_interrupt\nKeyboardInterrupt\n"}︡{"done":true}
︠3e159d66-ff40-420c-a458-9012f2036af5s︠

︡1ec4fd11-30ee-40c8-acce-3f794a99af0b︡{"done":true}










