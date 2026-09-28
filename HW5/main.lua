require("L5")

function setup()
  size(400, 400)

  -- Set the program title
  windowTitle("Basic sketch")

  describe('Draws a yellow background')
end

function draw()
  -- Fills the background with the color yellow
  background(141,16,85)
  noStroke()
  -- Makes a rectangle that stays in a quater of the screen, no matter the size of the window.
  fill(18,0,41)
  rect(width/2,height/2,width/2,height/2)

  fill(255, 0, 0)
  ellipse(mouseX,height/2,width/4,height/4)
end