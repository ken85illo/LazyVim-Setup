return {
    {
        "snacks.nvim",
        opts = {
            -- scroll = { enabled = false }, -- Disable smooth scrolling
        },
    },
    {
        "EdenEast/nightfox.nvim",
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
}
