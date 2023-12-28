local dispatch = {}
local monitor = peripheral.find("monitor")
rednet.open("left")
while (#dispatch == 0) do
    dispatch = {rednet.lookup("count")}
    sleep(1)
end
print("Found " .. #dispatch .. " dispatch computers")

num = 0
while num < 1000 do
    local id, msg = rednet.receive("count")
    monitor.clear()
    monitor.setCursorPos(1,1)
    monitor.write(msg)
    sleep(.5)
end
rednet.close()