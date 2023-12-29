local plist = peripheral.getNames()

local file = fs.open("methods.txt", "w")
for i=1,#plist do
    file.write(i .. " " .. plist[i] .. " " .. peripheral.getMethods(plist[i]))
end
file.close()