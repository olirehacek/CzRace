--CZRACE by Ondra Nil3E Rehacek from console-forum
--Doufam ze se vam hra libi�
svetlemodra = Color.new(0,255,255)
cervena = Color.new(255,0,0)
modra = Color.new(0,0,255)
ruzova = Color.new(255,0,255)
pozadi = Image.load("ostatni/load.png")
while true do
screen:blit(0,0,pozadi)
pad = Controls.read()
screen.flip()
screen.waitVblankStart(350)
dofile("menu.lua")
break
end
