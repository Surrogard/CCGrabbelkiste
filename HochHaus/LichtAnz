mon = peripheral.wrap("left")
mon.clear()
mon.setCursorPos(1,1)
startYPos = 0


function ShowLichtCableAsBool(sText, cFarbe, xPos, yPos)
  mon.setCursorPos(xPos, yPos)
  mon.write( sText )
  mon.write( " " )
  mon.write( colors.test(bndCableLicht, cFarbe) )
  mon.write( "  " )
end


function ShowLichtInfos()
  bndCableLicht = rs.getBundledInput("bottom")
  ShowLichtCableAsBool("   4:", colors.orange,   1, startYPos+1)
  ShowLichtCableAsBool("   3:", colors.lime,     1, startYPos+2)
  os.sleep(1)
end
 
