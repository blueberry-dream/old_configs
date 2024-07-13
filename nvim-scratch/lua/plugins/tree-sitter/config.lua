return function()
	-- log module
	print("loading tree-sitter lua module")

	-- load module and opts
	local TreeSitter = require("nvim-treesitter.configs")
	local opts = require("plugins.tree-sitter.opts")

	TreeSitter.setup(opts)
end
