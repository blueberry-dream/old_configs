-- [[
-- lua.plugins.tree-sitter.lua
-- config function for tree-sitter module
-- ]]
return function()
	-- log module
	print("loading plugins.tree-sitter module")

	-- load module and opts
	local TreeSitter = require("nvim-treesitter.configs")
	local opts = require("plugins.tree-sitter.opts")

	TreeSitter.setup(opts)
end
