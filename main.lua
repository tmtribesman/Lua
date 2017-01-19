
local mariox = 400
local marioy= 300
local upkeypressed = false
local leftkeypressed = false
local rightkeypressed = false
local downkeypressed = false

function love.load()

  Tileset = love.graphics.newImage('countryside.png')
  mTile = love.graphics.newImage('mario.bmp')

  local tileW, tileH = 32,32
  local tilesetW, tilesetH = Tileset:getWidth(), Tileset:getHeight()
  local mTileW, mTileH = 16,32
  local mtilesetW, mtilesetH = mTile:getWidth(), mTile:getHeight()

  GrassQuad = love.graphics.newQuad(0,  0, tileW, tileH, tilesetW, tilesetH)
  BoxQuad = love.graphics.newQuad(32, 0, tileW, tileH, tilesetW, tilesetH)

  WhiteQuad = love.graphics.newQuad(0, 0, mTileW, mTileH, mtilesetW, mtilesetH)
  SquareQuad = love.graphics.newQuad(32, 0, mTileW, mTileH, mtilesetW, mtilesetH)

end

function love.keypressed(pressed_key)

  if pressed_key == "up" then
    upkeypressed = true
  end
  if pressed_key == "left" then
    leftkeypressed = true
  end
  if pressed_key == "right" then
    rightkeypressed = true
  end
  if pressed_key == "down" then
    downkeypressed = true
  end

end

function love.keyreleased(released_key)
  if released_key == "up" then
    upkeypressed = false
  end
  if released_key == "down" then
    downkeypressed = false
  end
  if released_key == "left" then
    leftkeypressed = false
  end
  if released_key == "right" then
    rightkeypressed = false
  end
end

function love.update()
  if upkeypressed == true then
    marioy = marioy - 1
  end
  if rightkeypressed == true then
    mariox = mariox + 1
  end
  if leftkeypressed == true then
    mariox = mariox - 1
  end
  if downkeypressed == true then
    marioy = marioy + 1
  end
end

function love.draw()
  love.graphics.draw(Tileset, GrassQuad, 368, 268)
  love.graphics.draw(Tileset, GrassQuad, 400, 268)
  love.graphics.draw(Tileset, GrassQuad, 432, 268)
  love.graphics.draw(Tileset, GrassQuad, 368, 300)
  love.graphics.draw(Tileset, BoxQuad  , 400, 300)
  love.graphics.draw(Tileset, GrassQuad, 432, 300)
  love.graphics.draw(Tileset, GrassQuad, 368, 332)
  love.graphics.draw(Tileset, GrassQuad, 400, 332)
  love.graphics.draw(Tileset, GrassQuad, 432, 332)
  love.graphics.draw(mTile, WhiteQuad, mariox, marioy)
end
