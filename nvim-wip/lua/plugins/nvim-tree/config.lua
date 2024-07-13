return function(_,opts)
	print("loading nvim-tree lua module")
	local relPath = "plugins.nvim-tree"

	-- run before module setup
	require(relPath .. ".before")

	-- load module and setup
	local NvimTree = require("nvim-tree")
	-- local opts = require(relPath .. ".opts")
	NvimTree.setup()

	-- run after module scripts
	require(relPath .. ".after")
end

