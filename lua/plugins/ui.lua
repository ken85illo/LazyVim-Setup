return {
    {
        "folke/snacks.nvim",
        opts = {
            scroll = { enabled = false }, -- Disables the scroll animation
            styles = {
                float = {
                    border = "rounded",
                },
            },
        },
    },
    {
        "folke/noice.nvim",
        opts = {
            presets = {
                lsp_doc_border = true, --Add lsp borders for hover
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            diagnostics = {
                float = {
                    border = "rounded", --Add lsp borders for diagnostics
                },
            },
        },
    },
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("nightfox").setup({
                options = {
                    transparent = true,
                },
            })
            vim.cmd("colorscheme carbonfox")
            require("nightfox").load()
        end,
    },
    {
        "akinsho/bufferline.nvim",
        opts = {
            options = {
                tab_size = 0,
                indicator = {
                    style = "none",
                },
            },
            highlights = {
                separator = {
                    fg = "#0c0c0c",
                },
                tab_selected = {
                    fg = "#4e9fe5",
                },
                tab_separator = {
                    fg = "#0c0c0c",
                },
                tab_separator_selected = {
                    fg = "#0c0c0c",
                },
            },
        },
    },
    {
        "goolord/alpha-nvim",
        opts = function()
            local dashboard = require("alpha.themes.dashboard")
            dashboard.section.header.val = {
                [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
                [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
                [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
                [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
                [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
                [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
            }
            return dashboard
        end,
    },
}
