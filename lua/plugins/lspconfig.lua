return {
    -- add pyright to lspconfig
    {
        "neovim/nvim-lspconfig",
        dependencies = { "mfussenegger/nvim-jdtls" },
        opts = {
            servers = {
                bashls = {},
                clangd = {},
                cmake = {},
                basedpyright = {
                    root_dir = function()
                        return vim.fn.getcwd()
                    end,
                },
            },
            setup = {
                jdtls = function(_, opts)
                    return true
                end,
            },
        },
    },
    -- add any tools you want to have installed below
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                -- Lua
                "lua-language-server",
                "stylua", -- Used to format Lua code

                -- python
                "isort",
                "black",
                "basedpyright",
                "debugpy",

                -- javascript
                "prettierd",
                "prettier",

                -- C/C++
                "clang-format",
                "clangd",
                "codelldb",

                -- Cmake
                "cmake-language-server",
                "cmakelang",
                "cmakelint",

                -- Bash
                "bash-language-server",

                -- Java
                "java-debug-adapter",
                "java-test",
                "jdtls",
            },
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
