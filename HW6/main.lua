require("L5")


ovalY = 20
ovalX = 20
ovalMove = 3
tealValue = 0
tealSpeed = 3
circleSize = 50
growing = true

circleX = 150
circleY = 150
xSpeed = 3
ySpeed = 2



function setup()
  size(400, 400)
  -- Set the program title
  windowTitle("Animation Sketch")

  describe('Shows a cute animation.')
end

function draw()
  -- Fills the background with the color black
  background(13,27,42)
  noStroke()
    -- Bouncing oval
    fill(141,59,114)
    ellipse(200, ovalY, 200,200)
    -- Adds in the animation
    if ovalY > height+30 or ovalY < -30 then
        ovalMove = ovalMove * -1
    end
    -- 
    
    --Oval that bounces and changes color

    fill(54,tealValue,141)
    ellipse(ovalX,250,200,200)
    ovalX = ovalX+2
    tealValue = tealValue + tealSpeed

    -- Bounce animation
    if ovalX > width+30 then
        ovalX = -30
    end
    -- Color change animation
    if tealValue < 0 or tealValue > 255 then
     tealSpeed = tealSpeed * -1
    end
 
    -- Circle that changes size and moves diagnally
    fill(230,170,206)
    circle(circleX,circleY,circleSize)
   -- Animaites the sise change
    if growing then
      circleSize = circleSize + 1
     else
      circleSize = circleSize - 1
    end
   -- Bounces the shape size
    if circleSize > 200 then
      growing = false
      elseif circleSize < 50 then
      growing = true
    end
    if circleX < 0 or circleX > width then
     xSpeed = xSpeed * -1
    end
   -- Bounce off top and bottom edges
    if circleY < 0 or circleY > height then
     ySpeed = ySpeed * -1
    end

    circleX = circleX + xSpeed
    circleY = circleY + ySpeed
    ovalY = ovalY+ovalMove

end