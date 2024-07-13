--[[
-- lazy plugin manager
-- entry file for lazy.nvim plugin
-- ]]

print("loading lua.plugins.lazy-nvim module")

-- init
require("plugins.lazy.bootstrap")
local lazy = require("lazy")
local opts = require("plugins.lazy.opts")

-- setup
local pluginTable = require("plugins.lazy.plugin-table")
lazy.setup(pluginTable, opts)
