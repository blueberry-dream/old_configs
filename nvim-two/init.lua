-- [[ init.lua
-- init.lua
-- root lua config file for nvim config
-- ]]

print("loading init.lua")
require("core.opts")
require("core.utils").load_mappings()


require("plugins.lazy")
