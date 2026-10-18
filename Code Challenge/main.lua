
-- Made by Raegan Stempora, Chloe Utley, Bhavya Gurumoorthy, and Syd Spruill

require("L5")
local font require("L5")  

function setup()
  -- Set the title
  windowTitle('Drawing Some Stuff')
  -- Create the canvas
  size(700, 400)
  -- Set background to black
  background(0)
  -- Set width of the lines
  strokeWeight(20)
  -- All of the work for the Font Change
  fill(255)  
  font = loadFont('assets/UltronRegular.ttf')  
  textFont(font)  
  textSize(36) 
  text('A = Save, B = Resets Canvas, C = Bigger Brush, F = Smaller Brush', 15, 50)  
end

function mouseDragged()
  -- Set the color based on the mouse position, and draw a line
  -- from the previous position to the current position
  local lineHue = mouseX - mouseY
  stroke(lineHue, 90, 90)
  line(pmouseX, pmouseY, mouseX, mouseY)
end

-- Saves when the A key is pressed & Resets the canvas when B is pressed
function keyPressed()
  if key == 'a' then
  save()
  elseif key == 'b' then
  fill(0)
  rect(0,0,width,height)
  end
  -- Changes the Stroke Weight on Keypressed 
  z=20
  if key =='c' then
  strokeWeight(z+10)
  elseif key =='f' then
  strokeWeight(z-10)
  end
end

