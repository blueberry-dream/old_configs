-- [[
-- lua.plugins.nvim-tree.config
-- ]]
return function(_, opts)
    -- load module and setup
    print("loading plugins.nvim-tree module")

    local NvimTree = require("nvim-tree")
    NvimTree.setup()

    -- setup mappings
    require("core.utils").load_mappings("nvim_tree")

end
