print("bundled cable Test running...")
print(" CTRL + T  Terminate script")

mon = peripheral.wrap("top")
mon.clear()
mon.setCursorPos(1,1)
mon.write("bundled cable AsBool  Ver 0.5")
startYPos = 3


function ShowCableAsBool(sText, cFarbe, yPos)
  mon.setCursorPos(1, yPos)
  mon.write( sText )
  mon.write( " " )
  mon.write( colors.test(bndCable, cFarbe) )
  mon.write( "  " )
end


while true do
  bndCable = rs.getBundledInput("bottom")
  ShowCableAsBool("    white: ", colors.white, startYPos+0)
  ShowCableAsBool("   orange: ", colors.orange, startYPos+1)
  ShowCableAsBool("  magenta: ", colors.magenta, startYPos+2)
  ShowCableAsBool("lightBlue: ", colors.lightBlue, startYPos+3)
  ShowCableAsBool("   yellow: ", colors.yellow, startYPos+4)
  ShowCableAsBool("     lime: ", colors.lime, startYPos+5)
  os.sleep(1)
end



