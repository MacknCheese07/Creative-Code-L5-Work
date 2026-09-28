require("L5")

function setup()
  size(400, 600)
  angleMode(DEGREES)

  -- Set the program title
  windowTitle("Mountain Range")

  describe('Draws a pretty landscape of mountains.')
end

function draw()
  -- Fills the background with light blue
  background(125,165,198)
 
  -- First two Rays of purple light
  noStroke()
  fill(163,131,191)
  triangle (150,0, 0,0, 250,300)
  triangle (275,0, 400,0,250,300)
--Rays of pink light
  fill(231,140,172)
  triangle (0,0, 0,200, 250,300)
  triangle (400,0, 400,200, 250,300)
-- Rays of dark pink light
  fill(174,74,107)
  triangle (0,200, 0,400, 250,300)
  triangle (400,200, 400,400, 250,300)
--Sun circle
  fill(230, 188, 89)
  ellipse(250, 300, 200, 200)
--Clouds
  fill(242, 237, 255)
  ellipse(75, 245, 100, 50)
  ellipse(55, 220, 60, 35)

  ellipse(340, 175, 100, 50)
  ellipse(370, 195, 60, 35)
  ellipse(300, 150, 60, 35)

  ellipse(100, 100, 150, 60)
  ellipse(70, 60, 60, 35)

--First Mountain (darkest)
  fill(51, 72, 117)
  triangle (75,245, 300,450, -20,450)
--Second Mountain (Medium)
  fill(72, 77, 142)
  triangle (340,175, 200,450, 460,400)
--Third Mountain (Lightest)
  fill(82,106,168)
  triangle (230,260, 130,460, 300,460)
-- Back hill shape (darkest)
  fill(33,96,76)
  quad(0, 450, 0,600, 400, 600, 400, 400)
-- Back hill shape (medium)
  fill(33, 128, 96)
  quad(0, 500, 0,600, 400, 600, 400, 500)
-- Back hill shape (lightest)
  fill(33, 160, 116)
  quad(0, 550, 0,600, 400, 600, 400, 600)
end