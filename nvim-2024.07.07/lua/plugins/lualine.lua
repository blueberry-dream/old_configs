return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- call the setup function with properties to define how our lualine will look
        require("lualine").setup({
            options = {
                -- Use web devicons if you have a nerdfont installed
                icons_enabled = false,
                -- Set the theme to dracula, lualine documentation has other themes available as well
                -- theme = "catppuccin",
                -- Separate components of lua line with chevrons
                component_separators = { left = "", right = "" },
                -- Separate sections with solid triangles
                section_separators = { left = "", right = "" },
                -- disable the status line and winbar
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                -- Don't focus lualine on NvimTree
                ignore_focus = { "NvimTree" },
                -- Always divide lualine in the middle
                always_divide_middle = true,
                -- Disable global status
                globalstatus = true,
                -- Refresh every 1000 miliseconds
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                },
            },
            -- Setup what each lualine section will contain
            -- sections start at a on the left and go to z on the right
            sections = {
                -- display the current mode in section a
                lualine_a = { "mode" },
                -- display the current git branch, git differences, and any code diagnostics in section b
                lualine_b = { "branch", "diff", "diagnostics" },
                -- display the filename in section c
                --lualine_c = { { "filename", path = 2, shorting_target = 20 } },
                lualine_c = {
                    "filename",
                    -- {
                    --     -- Function to get the full file path
                    --     function()
                    --         return vim.fn.expand("%:p")
                    --     end,
                    --     padding = 1, -- Optional: Add padding around the filename
                    -- },
                    -- {
                    --     function()
                    --         local filepath = vim.fn.expand("%:p")
                    --         local root_dir = require("lspconfig").util.find_git_ancestor(vim.fn.getcwd())
                    --
                    --         if root_dir then
                    --             local root_len = string.len(root_dir) + 1
                    --             local project_len = string.find(string.reverse(root_dir), "/") - 1
                    --
                    --             if(project_len) then
                    --                 local project_root = string.sub(filepath, root_len - project_len, root_len - 1)
                    --                 local filename_rel = string.sub(filepath, root_len + 1 )
                    --                 return project_root ..  "  "  .. filename_rel
                    --             end
                    --             return filepath
                    --         else
                    --             return filepath
                    --         end
                    --     end,
                    --     padding = 1, -- Optional: Add padding around the filename
                    -- },
                },
                -- display the file encoding type, os, and filetype in section x
                lualine_x = { "encoding", "fileformat", "filetype" },
                -- display where you are at in the file in section y
                lualine_y = { "progress" },
                -- display exact location of the cursor in section z
                lualine_z = { "location" },
            },
            -- Setup what each section will contain in inactive buffers
            inactive_sections = {
                -- display nothing in sections a and b
                lualine_a = {},
                lualine_b = {},
                -- display the file name in section c
                lualine_c = { "filename" },
                -- display the exact location of the cursor in section x
                lualine_x = { "location" },
                -- display nothing in sections y and z
                lualine_y = {},
                lualine_z = {},
            },
            -- Use default values for tabline, winbar, inactive winbar and extensions
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {},
        })
    end,
}
