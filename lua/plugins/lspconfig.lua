return {
    -- add pyright to lspconfig
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                basedpyright = {
                    root_dir = function()
                        return vim.fn.getcwd()
                    end,
                },
            },
            inlay_hints = {
                enabled = false,
            },
            setup = {},
        },
    },
    {
        "mason.nvim",
        opts = {
            ui = {
                border = "single",
                size = {
                    width = 0.8,
                    height = 0.8,
                },
            },
        },
    },
}
