require("L5")

function setup()
  size(800, 400)
  angleMode(DEGREES)

  
  -- Set the program title
  windowTitle("Loop Practice")

  describe('Makes pretty patterns')
end
 
function draw ()
  background(50,200,250)
 -- Middle Line
  line(width/2,0,width/2,height)
  
  -- Starting Point
  x = 65
  y = 35

  --Makes a 3x4 grid
  for i = 1, 12, 1 do
    -- Makes the colors random in the grid
    fill(random(255),random(255),random(255))    
    rect(x,y,80,80)
    -- Moves y value
    y = y + 85;
    
    --Resets the grid/line
    
    if y >= 350 then
      y = 35;
      x = x + 85;
    end
  end

  -- RISO colors
local pink = color(255, 72, 176)
local blue = color(0, 120, 191)

for i = 1, 9, 1 do
  -- Makes a gradient for the circles to follow, it goes between the RISO collors pink and blue
  local t = (i - 1) / 8

    local r = 255 + (0 - 255) * t
    local g = 72 + (120 - 72) * t
    local b = 176 + (191 - 176) * t

    fill(color(r, g, b))
    -- Makes the ellipses that go in a straight line down
    ellipse(width * 0.75, 30 + i * 35, 25, 25)
end

end