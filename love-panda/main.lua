--! file: main.lua
function love.load()
    Object = require "classic"
    require "src/player"
    require "src/enemy"
    require "src/bullet"

    player = Player()
    enemy = Enemy()
    listOfBullets = {}

    countOfBullets = 0;
end

function love.keypressed(key)
    player:keyPressed(key)
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)

    for i, v in ipairs(listOfBullets) do
        v:update(dt)
        --Each bullets checks if there is collision with the enemy
        v:checkCollision(enemy)

        --If the bullet has the property dead and it's true then..
        if v.dead then
            --Remove it from the list
            table.remove(listOfBullets, i)
        end
    end
end

function love.draw()
    love.graphics.print(countOfBullets, 400, 300)

    player:draw()
    enemy:draw()

    for i, v in ipairs(listOfBullets) do
        v:draw()
    end
end