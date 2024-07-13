-- [[
-- lua.plugins.lazy.init.lua
-- lazy plugin manager
-- entry file for lazy.nvim plugin
-- ]]

print("loading plugins.lazy module")

require("plugins.lazy.bootstrap")

local lazy = require("lazy")
local opts = require("plugins.lazy.opts")
local pluginTable = require("plugins.lazy.plugin-table")

lazy.setup(pluginTable, opts)
