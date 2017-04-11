plugin.pluginEnable(function()
        logger.info(plugin.getDescription():getName() .. " has been enabled!")
end)

plugin.pluginDisable(function()
        logger.info(plugin.getDescription():getName() .. " has been disabled! See you later.")
end)

plugin.registerCommand("purge", "purge [amount]", function(m, args)
        if args[1] ~= nil then
                bot.requestBuffer(function()
                        m:getChannel():sendMessage("Purging  " .. args[1] .. "messages.")
                        m:getChannel():getMessageHistory(tonumber(args[1])):bulkDelete()
                end)
        end
end)