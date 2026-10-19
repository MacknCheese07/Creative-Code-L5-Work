require("L5")

function setup()
  size(800, 600)
  windowTitle("HW9")
  angleMode(DEGREES)
  -- Load the image Kronk! 
  sunImg = loadImage('assets/Sunset.jpeg')
end

function draw()
 
 background(0)
  -- IMAGE :)
  image(sunImg,0,0,width, height)
  noStroke()
  -- Yellow Circle
  fill(255, 212, 41, 100)
  circle(0,0,200)
  --Orange circle
  fill(255, 167, 41, 150)
  circle(0,0,300)
  -- Lighter orange circle
  fill(207, 179, 114,100)
  circle(0,0,400)

  -- Green little circle
  fill(41, 102, 36, 200)
  circle(width/7,height*0.85,50)
 -- Bigger green circle
  fill(41, 136, 36,100)
  circle(width/7,height*0.85,100)
  -- Even bigger green circle
  fill(41, 185, 78,50)
  circle(width/7,height*0.85,150)

  --Redish little circle
  fill(235, 153, 146,200)
  circle(width/1.3,height*0.35,75)
  -- Red middle circle
  fill(242, 143, 86,150)
  circle(width/1.3,height*0.35,150)
  -- Pink large circle
  fill(235, 140, 148,75)
  circle(width/1.3,height*0.35,200)
end