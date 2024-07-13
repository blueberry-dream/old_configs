return function()
	print("loading gitsigns lua module")

	local GitSigns = require("gitsigns")
	local Opts = require("plugins.gitsigns.opts")

	GitSigns.setup(Opts)
end
