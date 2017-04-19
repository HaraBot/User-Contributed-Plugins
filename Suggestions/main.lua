plugin.pluginEnable(function()
	logger.info(plugin.getDescription():getName() .. " has been enabled!")
end)

plugin.pluginDisable(function()
	logger.info(plugin.getDescription():getName() .. " has been disabled! See you later.")
end)

plugin.registerCommand("suggest", "suggest [suggestion]", function(m, args)
	if args[1] ~= nil then
		file = io.open("suggestions.txt", "a")
		file:write(table.concat(args, " ") .. "\n")
		file:close()
		m:getChannel():sendMessage("Suggestion successfully sent.")
	end
end)
