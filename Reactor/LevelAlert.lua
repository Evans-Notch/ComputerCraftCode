local DiscordHook = require("DiscordHook")
local success, hook = DiscordHook.createWebhook("https://discordapp.com/api/webhooks/... (THE URL YOU GOT FROM DISCORD)")
if not success then
  error("Webhook connection failed! Reason: " .. hook)
end

-- If the code execution continues here, that means we have the webhook available as it didn't error.
local pLevel = 0
local target = 75
while pLevel < target do
    
end
local msg = "The polonium levels are above " .. target
local botName = "Polonium Alert Bot"
hook.send(msg, botName, "https://upload.wikimedia.org/wikipedia/commons/b/b5/Radioactive.svg")