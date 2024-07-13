-- lazy plugin manager
-- entry file for lazy.nvim package
print("loading lazy.nvim lua module")

-- bootstrap lazy plugin manager
require("plugins.lazy.bootstrap")
local Lazy = require("lazy")
local Opts = require("plugins.lazy.opts")
-- lazy config for plugins
local PluginTable = require("plugins.lazy.plugin_table")

-- Lazy.setup({})
Lazy.setup(PluginTable, Opts)
