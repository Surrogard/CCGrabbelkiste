picList = {}
picIndex = 1
mon = peripheral.wrap("left")
mon.setCursorPos(1,1)
mon.write("<  1  >")
mon.setCursorPos(1,2)
mon.write("  SET")
mon.setCursorPos(1,3)
mon.write("  PLAY")

function ShowPicture(pic)
  for i=0,3,1 do
    rs.setBundledOutput("top",bit.brshift(pic,i*4))
    rs.setBundledOutput("back",bit.blshift(1,i))
    rs.setBundledOutput("back",0)
  end
end


while true do
  event, side, xPos, yPos = os.pullEvent("monitor_touch")
  if yPos == 1 then
    if xPos == 1 and picIndex > 1 then 
      picIndex = picIndex - 1
      mon.setCursorPos(4,1)
      mon.write(picIndex)
    end
    if xPos == 7 and picIndex < 16 then
      picIndex = picIndex + 1
      mon.setCursorPos(4,1)
      mon.write(picIndex)
    end
  end
  if yPos == 2 then 
    picList[picIndex] = rs.getBundledInput("right")
  end
  if yPos == 3 then
    ShowPicture(picList[picIndex])
  end
end