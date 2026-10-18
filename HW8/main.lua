

require("L5")


function setup()
  size(600, 400)
  angleMode(DEGREES)
  -- Changes the text align
  textAlign(CENTER)
  background(125,165,198)
  -- Set the program title
  windowTitle("HW8 - Arrays & Functions")

  describe('Flower Poem')

end
function mouseClicked() 
  -- Resets the background
  background(125,165,198)
  -- Different Arrays
  personType = {"plants","bugs","people","animals"}
  timeType = {"time","wind","tides","snow"}
  usType = {"us","me","you"}
  watchType = {"watch","run","lie","sit"}
  -- Text specific code
  fill(174,74,107)
  -- Loads the imported font
  font = loadFont('assets/Regular.ttf')  
  textFont(font)
  textSize(40)
  -- The "plants" (bugs, people, animals) are just starting to die, getting dragged under the "tides" (time, winds, snow), 
  -- soon that will be "us" (me, you,), too unaware to anything but "watch" (run, lie, sit)
  text('The '..random(personType)..' are just starting to die,',width/2, height/2.7)
  text('getting dragged under the '..random(timeType)..',',width/2, height/2.2)
  text('soon that will be '..random(usType)..',',width/2,height/1.8)
  text('too unware to do anything but '..random(watchType)..'.',width/2,height/1.6)
end

function draw()
end

