return function (plugin, opts)
	-- start up message logging
	print("loading plugins.catppuccin module")
	
	local catppuccin = require("catppuccin")
	local opts = require("plugins.catppuccin.opts")

	catppuccin.setup(opts)

	require("plugins.catppuccin.after")
end
