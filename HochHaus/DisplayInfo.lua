print("Kontrollzentrum Info scripts running...")
print(" CTRL + T  Terminate script")

mon = peripheral.wrap("left")
mon.clear()
mon.setCursorPos(1,1)

shell.run("downloads/CCGrabbelkiste/HochHaus/LichtAnz")
os.loadAPI("downloads/CCGrabbelkiste/HochHaus/LichtAnz")

while true do
  LichtAnz.ShowLichtInfos(1, 1)
  os.sleep(1)
end

