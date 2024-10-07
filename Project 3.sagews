
reset()

sun = point([0,0], size = 6000, color = 'orange')
earth = point([5,0], size = 1000, color = 'blue')
moon = point([6, 0], size = 150, color = 'goldenrod')
mars = point([9, 0], size = 700, color = 'red')
station = polygon([(10,10), (11,10), (11,11), (10,11)], color = 'purple')
starship = point([(9,0)], size=70, color = 'black')
(sun+earth+moon+mars+station+starship).show(xmin = -13, xmax = 13, ymin = -13, ymax = 13,
figsize = 15, ticks = (1,1))

unitcircle = circle((0,0), 5)
(unitcircle+sun+earth).show()

movingEarth = [sun + point((5*cos(2*k*pi/40), 5*sin(2*k*pi/40)), color = 'blue', size = 1000) for k in range(1,41)]
animateE = animate(movingEarth, xmin = -13, xmax = 13, ymin = -13, ymax = 13, aspect_ratio = 1, figsize = 15)

animateE.show(gif = True)

movingMoon = [point((cos(2*k*pi/(40/4)),sin(2*k*pi/(40/4))), color = 'goldenrod', size = 150) for k in range(1,1+(40/4))]

animateMo = animate(movingMoon, xmin = -13, xmax = 13, ymin = -13, ymax = 13, aspect_ratio = 1, figsize = 15)

animateMo.show(gif = True)









