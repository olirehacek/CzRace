--CZRACE by Ondra Nil3E Rehacek from console-forum
--Doufam ze se vam hra libi

x = 10 
y = 130
v = 30 
w = 480 
a = 480
b = 200
c = 480
d = 130
s = 0
p = 3
svetlemodra = Color.new(0,255,255)
cervena = Color.new(255,0,0)
modra = Color.new(0,0,255)
ruzova = Color.new(255,0,255)
auto = Image.load("auta/auto.png")
auto1 = Image.load("auta/auto1.png") 
auto2 = Image.load("auta/auto2.png") 
auto3 = Image.load("auta/auto3.png")
konec = Image.load("ostatni/konec.png")
pozadi = Image.load("ostatni/tapeta.png")
Mp3me.load("game.mp3")
file = io.open("highscore.nil3e","w")
while true do
Mp3me.play()
screen:blit(0, 0, pozadi)
pad = Controls.read()
screen:print(2,250,"Skore:",modra)
screen:print(50,250,s,svetlemodra)
screen:print(2,260,"Level:",modra)
screen:print(50,260,p,svetlemodra)
screen:blit(w, v, auto1, true)
screen:blit(a, b, auto2, true)
screen:blit(c, d, auto3, true)
if pad:down() and y < 230 then 
y = y + 10 
end
if pad:up() and y > 10 then 
y = y - 10 
end 
if pad:right() and x < 470 then 
x = x + 10 
end 
if pad:left() and x > 10 then 
x = x - 10 
end  
screen:blit(x, y, auto, true)
a = a - p
w = w - p 
c = c - p
screen.flip() 
if w > 165 and w < 175 and a < 400 then 
s = s + 1 
a = 480 
b = math.random(230) + 10
end 
if w > 325 and w < 335 and c < 400 then 
s = s + 1 
c = 480 
d = math.random(230) + 10
end 
if w < 0 then 
s = s + 1 
w = 480 
v = math.random(230) + 10
end 
p = p + 0.01
if (v - 32 < y and y < v + 32 and x + 55 > w and x < w + 5) or (b - 32 < y and y < b + 32 and x + 55 > a and x < a + 5) or (d - 32 < y and y < d + 32 and x + 55 > c and x < c + 5) then
screen:blit(0, 0, pozadi)
screen:blit(0, 0, konec, true)
screen:print(2,250,"Skore:",cervena)
screen:print(50,250,s,cervena)
screen:print(2,260,"Level:",cervena)
screen:print(50,260,p,cervena)
screen.flip() 
screen.waitVblankStart(300)
Mp3me.stop()
dofile("menu.lua")
break
end
screen:clear()

if pad:select() then
file:write(s)
file:close()

end
if pad:square() then break end
end 