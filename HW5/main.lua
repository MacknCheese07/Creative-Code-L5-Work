require("L5")

function setup()
  size(400, 600)

  -- Set the program title
  windowTitle("HW5 Cityscape")

  describe('Draws a super cool cityscape.')
end

function draw()
  -- Fills the background with the color yellow
  background(76,201,240)
  noStroke()
  -- Makes a rectangle that stays in a quater of the screen, no matter the size of the window.
  fill(18,0,41)
  rect(width/2,height/2,width/2,height/2)

  fill(255, 0, 0)
  ellipse(mouseX,height/2,width/4,height/4)

    -- First two Rays of light blue light
  noStroke()
  fill(72,149,239)
  triangle (width*0.375,0, 0,0,mouseX,height*.5)
  triangle (width*0.6875,0, width,0,mouseX,height*.5)
--Rays of blue light
  fill(67,97,238)
  triangle (0,0, 0,height*0.33, mouseX,height*.5)
  triangle (width,0, width,height*0.33, mouseX,height*.5)
-- Rays of dark blue light
  fill(63,55,201)
  triangle (0,height*0.33, 0,height*0.88,mouseX,height*.5)
  triangle (width,height*.33, width,height*0.88, mouseX,height*.5)
  --Sun/Moon
  fill(26,170,199)
  ellipse(mouseX, height/2, width/2, height*0.33)
  --First building (most left)
  fill(86,11,173)
  quad(0,height*.24, width*0.1, height*0.3, width*0.26, height, 0, height)
  quad(0, height*0.35, width*0.25,height*0.3, width*0.25, height, 0, height)
 --Second Building (most right)
  fill(72,12,168)
  quad(width*0.9, height*0.16, width,height*0.12, width, height, width*0.9, height)
  quad(width*0.8, height*0.16, width,height*0.2, width, height, width*0.8, height)
  --Third building (second left)
  fill(114,9,183)
  quad(width*0.16, height*0.38, width*0.4,height*0.48, width*0.4, height, width*0.16, height)
  quad(width*0.1, height*0.4, width*0.6,height*0.6, width*0.6, height, width*0.1, height)
  
  --Front Building (bright pink)
  fill(181,23,158)
  quad(width*0.5, height*0.45, width*0.85,height*0.57, width*0.85, height, width*0.5, height)
  quad(width*0.45, height*0.57, width*0.6, height*0.5, width*0.6, height, width*0.45,height)
  quad(width*0.4, height*0.6, width*0.9,height*0.55, width*0.9, height, width*0.4, height)
end