local number = 0
rednet.open("right")
rednet.host("count", "Dispatch0")
while number < 1001 do
    print(number)
    rednet.broadcast(number, "count")
    number = number + 1
    sleep(1)
end
rednet.unhost("count")
rednet.close()