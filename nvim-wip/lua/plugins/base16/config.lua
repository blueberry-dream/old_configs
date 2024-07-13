return function()
	local opts = require("plugins.base16.opts")
	require("base16-colorscheme").with_config(opts)

	vim.cmd.colorscheme "base16-black-metal-dark-funeral"
end

