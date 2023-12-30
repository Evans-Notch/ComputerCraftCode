local webhook = "" --webhook url
local pLevel = 0 --level counter
local target = 75 --target level
local msg = "The polonium levels are above " .. target
local botName = "Polonium Alert Bot"
local botIcon = "https://upload.wikimedia.org/wikipedia/commons/b/b5/Radioactive.svg"

-- Be sure to pull the discord library with: wget https://raw.githubusercontent.com/Wendelstein7/DiscordHook-CC/master/DiscordHook.lua DiscordHook.lua
local DiscordHook = require("DiscordHook")
local success, hook = DiscordHook.createWebhook(webhook)
if not success then
  error("Webhook connection failed! Reason: " .. hook)
end

-- If the code execution continues here, that means we have the webhook available as it didn't error.

local chest = peripheral.wrap("left")
while pLevel < target do
    sleep(120)
    pLevel = chest.getItemDetail(1).count
end

hook.send(msg, botName, botIcon)