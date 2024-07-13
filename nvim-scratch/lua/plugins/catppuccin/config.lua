return function()
	-- start up message logging
	print("loading plugins.catppuccin module")
	local catppuccin = require("catppuccin")
	local opts = require("plugins.catppuccin.opts")

	catppuccin.setup(opts)

	vim.cmd.colorscheme("catppuccin")
end
