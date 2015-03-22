biela = Color.new(255,255,255)
vyber = Color.new(0,0,139)
zelena = Color.new(20,150,147)
selY = 177
Mp3me.load("hudba.mp3")
title = Image.load("ostatni/title.png")
while true do
screen:blit(0,0,title)
Image:fillRect(40, selY, 95, 10, vyber)
screen:print(40,178, "Nova hra", biela)
screen:print(40,198, "Czrace LIVE!", biela)
screen:print(40,218, "Autori", biela)
screen:print(40,238, "Konec", biela)
Mp3me.play()
pad = Controls.read()

if pad:down() and oldpad:down() ~= pad:down() then
selY = selY + 20
end

if pad:up() and oldpad:up() ~= pad:up() then
selY = selY - 20
end

if selY == 94 then
selY = 44
end

if selY == 34 then
selY = 84
end

if selY == 177 and pad:cross() and oldpad:cross() ~= pad:cross() then
Mp3me.stop()
dofile("hra.lua")
end

if selY == 197 and pad:cross() and oldpad:cross() ~= pad:cross() then
System.webbrowser("ms0:/psp/game/CZRACE","http://czrace.hu.cz/live")
end

if selY == 217 and pad:cross() and oldpad:cross() ~= pad:cross() then
dofile("au.lua")
end

if selY == 237 and pad:cross() and oldpad:cross() ~= pad:cross() then
System.Quit()
end

screen.waitVblankStart()
screen.flip()
oldpad = pad
end