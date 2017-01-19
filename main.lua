
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
  love.graphics.draw(mTile, WhiteQuad, 400, 300)
end
