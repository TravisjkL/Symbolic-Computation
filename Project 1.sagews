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











