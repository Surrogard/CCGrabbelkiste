print("Kontrollzentrum Info scripts running...")
print(" CTRL + T  Terminate script")

mon = peripheral.wrap("left")
mon.clear()
mon.setCursorPos(1,1)

shell.run("downloads/CCGrabbelkiste/HochHaus/LichtAnz.lua")
os.loadAPI("downloads/CCGrabbelkiste/HochHaus/LichtAnz.lua")

while true do
  LichtAnz.ShowLichtInfos()
  os.sleep(1)
end

