print("bundled cable Test running...")
print(" CTRL + T  Terminate script")

mon = peripheral.wrap("top")
mon.clear()
mon.setCursorPos(1,1)
mon.write("bundled cable AsBool  Ver 0.4")
startYPos = 2


function ShowCableAsBool(sText, cFarbe, yPos)
  mon.setCursorPos(1, yPos)
  mon.write( sText )
  mon.write( " " )
  mon.write( colors.test(bndCable, cFarbe) )
  mon.write( "  " )
end


while true do
  bndCable = rs.getBundledInput("bottom")
  ShowCableAsBool("gelb: ", colors.yellow, 3)
  os.sleep(1)
end



