︠809e4896-86f4-4684-a3cc-c8eea93bf2c9s︠
reset()
︡7a60f0f6-0426-4e9d-9823-3ebe41461c4f︡{"done":true}
︠305b9bda-eaf5-40be-af4e-24eb52a6811bs︠
sun = point([0,0], size = 6000, color = 'orange')
earth = point([5,0], size = 1000, color = 'blue')
moon = point([6, 0], size = 150, color = 'goldenrod')
mars = point([9, 0], size = 700, color = 'red')
station = polygon([(10,10), (11,10), (11,11), (10,11)], color = 'purple')
starship = point([(9,0)], size=70, color = 'black')
(sun+earth+moon+mars+station+starship).show(xmin = -13, xmax = 13, ymin = -13, ymax = 13,
figsize = 15, ticks = (1,1))
︡8c8fe677-6948-4465-88b4-47633a2dd321︡{"file":{"filename":"/tmp/tmp0grosjak/tmp_p2q0lg4s.svg","show":true,"text":null,"uuid":"400d1d62-76d5-46fb-b1f3-566869ffeed2"},"once":false}︡{"done":true}
︠a7963db3-dac0-4c54-9925-74d1f63f1a37s︠
unitcircle = circle((0,0), 5)
(unitcircle+sun+earth).show()
︡78efdd52-0428-4ce0-9fb2-55c31b349049︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\nNameError: name 'sun' is not defined\n"}︡{"done":true}︡
︠7803c46e-67be-4dc0-a90f-ed0de2769684s︠
movingEarth = [sun + point((5*cos(2*k*pi/40), 5*sin(2*k*pi/40)), color = 'blue', size = 1000) for k in range(1,41)]
animateE = animate(movingEarth, xmin = -13, xmax = 13, ymin = -13, ymax = 13, aspect_ratio = 1, figsize = 15)

animateE.show(gif = True)
︡cd82f830-adca-473a-8139-6c5896e7d437︡{"stderr":"Error in lines 1-1\n"}︡{"stderr":"Traceback (most recent call last):\n  File \"/cocalc/lib/python3.11/site-packages/smc_sagews/sage_server.py\", line 1244, in execute\n    exec(\n  File \"\", line 1, in <module>\n  File \"\", line 1, in <listcomp>\nNameError: name 'sun' is not defined\n"}︡{"done":true}
︠6f1ec9eb-a27f-41ee-83f4-9c5c39126c9a︠
movingMoon = [point((cos(2*k*pi/(40/4)),sin(2*k*pi/(40/4))), color = 'goldenrod', size = 150) for k in range(1,1+(40/4))]
︡a2ac4bc0-29ef-42f1-afd8-9828374f64ea︡{"done":true}
︠4977ad62-22fd-49f8-8db4-9285db3a7152︠
animateMo = animate(movingMoon, xmin = -13, xmax = 13, ymin = -13, ymax = 13, aspect_ratio = 1, figsize = 15)
︡500798cd-5c54-44f3-ba95-21299a344cd3︡{"done":true}
︠e0680ee6-fdfe-41ac-89a7-d61e8596de41︠
animateMo.show(gif = True)









