--Snaps images in place next to each other for easy tileset generation--

--If you're reading this, I'm just gonna let you know that I did this probably as sloppily as possible; could've done this in WAY less lines

typeTileName = true
screenTimer = 0
printName = ""

importTileset = false
importTiles = false
fileSize = 32
tilesetSlot = 0

bigWhiteThing = love.graphics.newImage("Images/Do NOT Remove This.png")
placeHolder = love.graphics.newImage("Images/Do NOT Delete This Either.png")
placeHolderText = "Images/Do NOT Delete This Either"

tileA = placeHolder
tileB = placeHolder
tileC = placeHolder
tileD = placeHolder
tileE = placeHolder
tileF = placeHolder
tileG = placeHolder
tileH = placeHolder
tileI = placeHolder
tileJ = placeHolder
tileK = placeHolder
tileL = placeHolder
tileM = placeHolder
tileN = placeHolder
tileO = placeHolder
tileP = placeHolder
tileQ = placeHolder
tileR = placeHolder
tileS = placeHolder
tileT = placeHolder
tileU = placeHolder
tileV = placeHolder
tileW = placeHolder
tileX = placeHolder
tileY = placeHolder
tileZ = placeHolder
tileA1 = placeHolder
tileB1 = placeHolder
tileC1 = placeHolder
tileD1 = placeHolder

tile = {
	a = placeHolder,
	b = placeHolder,
	c = placeHolder,
	d = placeHolder,
	e = placeHolder,
  f = placeHolder,
  g = placeHolder,
  h = placeHolder,
  i = placeHolder,
  j = placeHolder,
  k = placeHolder,
  l = placeHolder,
  m = placeHolder,
  n = placeHolder,
  o = placeHolder,
  p = placeHolder,
  q = placeHolder,
  r = placeHolder,
  s = placeHolder,
  t = placeHolder,
  u = placeHolder,
  v = placeHolder,
  w = placeHolder,
  x = placeHolder,
  y = placeHolder,
  z = placeHolder,
  a1 = placeHolder,
  b1 = placeHolder,
  c1 = placeHolder,
  d1 = placeHolder

}


function love.update(dt)

  

  if (screenTimer >= 1 and screenTimer <= 2) then
  screenTimer = screenTimer + dt
  end

  if (screenTimer >= 2) then
      local s = love.graphics.newScreenshot() --ImageData
      s:encode("tileset.png")
      screenTimer = 0
  end


end

function love.textinput(t)
  if (typeTileName) then
    printName = printName..t
  end


end

function love.keypressed(k)
  if (k == "backspace") then
    printName = ""
  end

  if (k == "return") then

    if (printName == "DONE") then
      typeTileName = false
      screenTimer = 1
      placeHolder = love.graphics.newImage(placeHolderText..".png")
    elseif (printName == "IMPORT") then
      importTileset = true
      printName = ""
    elseif (importTileset) then
      tilesetSlot = printName
      importTiles = true
      importTileset = false
      printName = ""
    elseif (tonumber(printName) ~= nil) then
      fileSize = tonumber(printName)
      printName = ""
    else
    if (love.filesystem.exists("Images/"..printName..".png") == false) then
      printName = ""
    else

  	if (tile.a == placeHolder and importTiles == false or tilesetSlot == "0" and importTiles) then
      tile.a = printName
      tileA = love.graphics.newImage("Images/"..tile.a..".png")
      tilesetSlot = "1"
    elseif (tile.b == placeHolder and importTiles == false or tilesetSlot == "1" and importTiles) then
      tile.b = printName
      tileB = love.graphics.newImage("Images/"..tile.b..".png")
      tilesetSlot = "2"
    elseif (tile.c == placeHolder and importTiles == false or tilesetSlot == "2" and importTiles) then
      tile.c = printName
      tileC = love.graphics.newImage("Images/"..tile.c..".png")
      tilesetSlot = "3"
    elseif (tile.d == placeHolder and importTiles == false or tilesetSlot == "3" and importTiles) then
      tile.d = printName
      tileD = love.graphics.newImage("Images/"..tile.d..".png")
      tilesetSlot = "4"
    elseif (tile.e == placeHolder and importTiles == false or tilesetSlot == "4" and importTiles) then
      tile.e = printName
      tileE = love.graphics.newImage("Images/"..tile.e..".png")
      tilesetSlot = "5"
    elseif (tile.f == placeHolder and importTiles == false or tilesetSlot == "5" and importTiles) then
      tile.f = printName
      tileF = love.graphics.newImage("Images/"..tile.f..".png")
      tilesetSlot = "6"
    elseif (tile.g == placeHolder and importTiles == false or tilesetSlot == "6" and importTiles) then
      tile.g = printName
      tileG = love.graphics.newImage("Images/"..tile.g..".png")
      tilesetSlot = "7"
    elseif (tile.h == placeHolder and importTiles == false or tilesetSlot == "7" and importTiles) then
      tile.h = printName
      tileH = love.graphics.newImage("Images/"..tile.h..".png")
      tilesetSlot = "8"
    elseif (tile.i == placeHolder and importTiles == false or tilesetSlot == "8" and importTiles) then
      tile.i = printName
      tileI = love.graphics.newImage("Images/"..tile.i..".png")
      tilesetSlot = "9"
    elseif (tile.j == placeHolder and importTiles == false or tilesetSlot == "9" and importTiles) then
      tile.j = printName
      tileJ = love.graphics.newImage("Images/"..tile.j..".png")
      tilesetSlot = "10"
    elseif (tile.k == placeHolder and importTiles == false or tilesetSlot == "10" and importTiles) then
      tile.k = printName
      tileK = love.graphics.newImage("Images/"..tile.k..".png")
      tilesetSlot = "11"
    elseif (tile.l == placeHolder and importTiles == false or tilesetSlot == "11" and importTiles) then
      tile.l = printName
      tileL = love.graphics.newImage("Images/"..tile.l..".png")
      tilesetSlot = "12"
    elseif (tile.m == placeHolder and importTiles == false or tilesetSlot == "12" and importTiles) then
      tile.m = printName
      tileM = love.graphics.newImage("Images/"..tile.m..".png")
      tilesetSlot = "13"
    elseif (tile.n == placeHolder and importTiles == false or tilesetSlot == "13" and importTiles) then
      tile.n = printName
      tileN = love.graphics.newImage("Images/"..tile.n..".png")
      tilesetSlot = "14"
    elseif (tile.o == placeHolder and importTiles == false or tilesetSlot == "14" and importTiles) then
      tile.o = printName
      tileO = love.graphics.newImage("Images/"..tile.o..".png")
      tilesetSlot = "15"
    elseif (tile.p == placeHolder and importTiles == false or tilesetSlot == "15" and importTiles) then
      tile.p = printName
      tileP = love.graphics.newImage("Images/"..tile.p..".png")
      tilesetSlot = "16"
    elseif (tile.q == placeHolder and importTiles == false or tilesetSlot == "16" and importTiles) then
      tile.q = printName
      tileQ = love.graphics.newImage("Images/"..tile.q..".png")
      tilesetSlot = "17"
    elseif (tile.r == placeHolder and importTiles == false or tilesetSlot == "17" and importTiles) then
      tile.r = printName
      tileR = love.graphics.newImage("Images/"..tile.r..".png")
      tilesetSlot = "18"
    elseif (tile.s == placeHolder and importTiles == false or tilesetSlot == "18" and importTiles) then
      tile.s = printName
      tileS = love.graphics.newImage("Images/"..tile.s..".png")
      tilesetSlot = "19"
    elseif (tile.t == placeHolder and importTiles == false or tilesetSlot == "19" and importTiles) then
      tile.t = printName
      tileT = love.graphics.newImage("Images/"..tile.t..".png")
      tilesetSlot = "20"
    elseif (tile.u == placeHolder and importTiles == false or tilesetSlot == "20" and importTiles) then
      tile.u = printName
      tileU = love.graphics.newImage("Images/"..tile.u..".png")
      tilesetSlot = "21"
    elseif (tile.v == placeHolder and importTiles == false or tilesetSlot == "21" and importTiles) then
      tile.v = printName
      tileV = love.graphics.newImage("Images/"..tile.v..".png")
      tilesetSlot = "22"
    elseif (tile.w == placeHolder and importTiles == false or tilesetSlot == "22" and importTiles) then
      tile.w = printName
      tileW = love.graphics.newImage("Images/"..tile.w..".png")
      tilesetSlot = "23"
    elseif (tile.x == placeHolder and importTiles == false or tilesetSlot == "23" and importTiles) then
      tile.x = printName
      tileX = love.graphics.newImage("Images/"..tile.x..".png")
      tilesetSlot = "24"
    elseif (tile.y == placeHolder and importTiles == false or tilesetSlot == "24" and importTiles) then
      tile.y = printName
      tileY = love.graphics.newImage("Images/"..tile.y..".png")
      tilesetSlot = "25"
    elseif (tile.z == placeHolder and importTiles == false or tilesetSlot == "25" and importTiles) then
      tile.z = printName
      tileZ = love.graphics.newImage("Images/"..tile.z..".png")
      tilesetSlot = "26"
    elseif (tile.a1 == placeHolder and importTiles == false or tilesetSlot == "26" and importTiles) then
      tile.a1 = printName
      tileA1 = love.graphics.newImage("Images/"..tile.a1..".png")
      tilesetSlot = "27"
    elseif (tile.b1 == placeHolder and importTiles == false or tilesetSlot == "27" and importTiles) then
      tile.b1 = printName
      tileB1 = love.graphics.newImage("Images/"..tile.b1..".png")
      tilesetSlot = "28"
    elseif (tile.c1 == placeHolder and importTiles == false or tilesetSlot == "28" and importTiles) then
      tile.c1 = printName
      tileC1 = love.graphics.newImage("Images/"..tile.c1..".png")
      tilesetSlot = "29"
    elseif (tile.d1 == placeHolder and importTiles == false or tilesetSlot == "29" and importTiles) then
      tile.d1 = printName
      tileD1 = love.graphics.newImage("Images/"..tile.d1..".png")
      tilesetSlot = "30"
  	end
    printName = ""
  end
  end
  end

end

function love.draw()
  if (typeTileName == false) then
    love.graphics.draw(bigWhiteThing)
    if (importTiles) then
    importedTileset = love.graphics.newImage("Images/tileset.png")
    love.graphics.draw(importedTileset, 0, 0)
    end

      love.graphics.draw(tileA, 0, 0)
      love.graphics.draw(tileB, fileSize, 0)
      love.graphics.draw(tileC, fileSize * 2, 0)
      love.graphics.draw(tileD, fileSize * 3, 0)
      love.graphics.draw(tileE, fileSize * 4, 0)
      love.graphics.draw(tileF, fileSize * 5, 0)
      love.graphics.draw(tileG, fileSize * 6, 0)
      love.graphics.draw(tileH, fileSize * 7, 0)
      love.graphics.draw(tileI, fileSize * 8, 0)
      love.graphics.draw(tileJ, 0, fileSize)
      love.graphics.draw(tileK, fileSize, fileSize)
      love.graphics.draw(tileL, fileSize * 2, fileSize)
      love.graphics.draw(tileM, fileSize * 3, fileSize)
      love.graphics.draw(tileN, fileSize * 4, fileSize)
      love.graphics.draw(tileO, fileSize * 5, fileSize)
      love.graphics.draw(tileP, fileSize * 6, fileSize)
      love.graphics.draw(tileQ, fileSize * 7, fileSize)
      love.graphics.draw(tileR, fileSize * 8, fileSize)
      love.graphics.draw(tileS, 0, fileSize * 2)
      love.graphics.draw(tileT, fileSize, fileSize * 2)
      love.graphics.draw(tileU, fileSize * 2, fileSize * 2)
      love.graphics.draw(tileV, fileSize * 3, fileSize * 2)
      love.graphics.draw(tileW, fileSize * 4, fileSize * 2)
      love.graphics.draw(tileX, fileSize * 5, fileSize * 2)
      love.graphics.draw(tileY, fileSize * 6, fileSize * 2)
      love.graphics.draw(tileZ, fileSize * 7, fileSize * 2)
      love.graphics.draw(tileA1, fileSize * 8, fileSize * 2)
      love.graphics.draw(tileB1, 0, fileSize * 3)
      love.graphics.draw(tileC1, fileSize, fileSize * 3)
      love.graphics.draw(tileD1, fileSize * 2, fileSize * 3)
    
  end

  if (typeTileName) then
    love.graphics.print("Type in the name for a tile you will like to import", 0, 100)
    love.graphics.print('Make sure that all images you are importing are located in the "Images" folder in the generator files.', 0, 120)
    love.graphics.print("All tiles must have same dimensions with matching width and height. Max size is 100x100.", 0, 140)
    love.graphics.print('Type "DONE" when you have imported all the files. All imported tiles will have their names displayed below.')
    love.graphics.print('Type in a number to change the file size dimensions being imported.', 0, 160)
    love.graphics.print('Type "IMPORT" to import a tileset.png file.', 0, 180)
    if (importTiles) then
      love.graphics.print("Type in the name for the tile(s) you would like to import to the tileset now.", 0, 260)
    end
    if (importTileset) then
      love.graphics.print("Make sure you have a tileset.png file in the Images folder, then type in the number of tiles currently in the tileset.", 0, 220)
    else
      love.graphics.print("EX: Tile1", 0, 220)
    end

      love.graphics.print("Format: "..fileSize.."x"..fileSize, 0, 200)

    love.graphics.print(printName, 0, 240)

    love.graphics.print(tostring(tile.a), 0, 300)
    love.graphics.print(tostring(tile.b), 0, 315)
    love.graphics.print(tostring(tile.c), 0, 330)
    love.graphics.print(tostring(tile.d), 0, 345)
    love.graphics.print(tostring(tile.e), 0, 360)
    love.graphics.print(tostring(tile.f), 0, 375)
    love.graphics.print(tostring(tile.g), 0, 390)
    love.graphics.print(tostring(tile.h), 50, 300)
    love.graphics.print(tostring(tile.i), 50, 315)
    love.graphics.print(tostring(tile.j), 50, 330)
    love.graphics.print(tostring(tile.k), 50, 345)
    love.graphics.print(tostring(tile.l), 50, 360)
    love.graphics.print(tostring(tile.m), 50, 375)
    love.graphics.print(tostring(tile.n), 50, 390)
    love.graphics.print(tostring(tile.o), 100, 300)
    love.graphics.print(tostring(tile.p), 100, 315)
    love.graphics.print(tostring(tile.q), 100, 330)
    love.graphics.print(tostring(tile.r), 100, 345)
    love.graphics.print(tostring(tile.s), 100, 360)
    love.graphics.print(tostring(tile.t), 100, 375)
    love.graphics.print(tostring(tile.u), 100, 390)
    love.graphics.print(tostring(tile.v), 150, 300)
    love.graphics.print(tostring(tile.w), 150, 315)
    love.graphics.print(tostring(tile.x), 150, 330)
    love.graphics.print(tostring(tile.y), 150, 345)
    love.graphics.print(tostring(tile.z), 150, 360)
    love.graphics.print(tostring(tile.a1), 150, 375)
    love.graphics.print(tostring(tile.b1), 150, 390)
    love.graphics.print(tostring(tile.c1), 150, 405)
    love.graphics.print(tostring(tile.d1), 150, 420)

  end


end