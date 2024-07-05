return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
        return {
            options = {
                component_separators = { left = " ", right = " " },
                section_separators = { left = " ", right = " " },
                theme = "auto",
                globalstatus = true,
                disabled_filetypes = { statusline = { "dashboard", "alpha" } },
            },
            sections = {
                lualine_a = { { "mode", icon = "" } },
                lualine_b = { { "branch", icon = "" } },
                lualine_c = {
                    {
                        "diagnostics",
                        symbols = {
                            error = " ",
                            warn = " ",
                            info = " ",
                            hint = "󰝶 ",
                        },
                    },
                    { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
                    { "filename", padding = { left = 1, right = 0 } },
                    {
                        -- function()
                        --     local buffer_count = require("core.utils").get_buffer_count()
                        --
                        --     return "+" .. buffer_count - 1 .. " "
                        -- end,
                        -- cond = function()
                        --     return require("core.utils").get_buffer_count() > 1
                        -- end,
                        -- color = utils.get_hlgroup("Operator", nil),
                        padding = { left = 0, right = 1 },
                    },
                    {
                        function()
                            return require("nvim-navic").get_location()
                        end,
                        cond = function()
                            return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
                        end,
                        -- color = utils.get_hlgroup("Comment", nil),
                    },
                },
                lualine_x = {
                    {
                        require("lazy.status").updates,
                        cond = require("lazy.status").has_updates,
                        -- color = utils.get_hlgroup("String"),
                    },
                    -- {
                        -- function()
                        --     local icon = " "
                        --     local status = require("copilot.api").status.data
                        --     return icon .. (status.message or "")
                        -- end,
                        -- cond = function()
                        --     local ok, clients = pcall(vim.lsp.get_clients, { name = "copilot", bufnr = 0 })
                        --     return ok and #clients > 0
                        -- end,
                    -- },
                    { "diff" },
                },
                lualine_y = {
                    {
                        "progress",
                    },
                    {
                        "location",
                        -- color = utils.get_hlgroup("Boolean"),
                    },
                },
                lualine_z = {
                    {
                        "datetime",
                        style = "  %X",
                    },
                },
            },

            extensions = { "lazy", "toggleterm", "mason", "neo-tree", "trouble" },
        }
    end,
}
