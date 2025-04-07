-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local api = vim.api

api.nvim_create_autocmd({ "ColorScheme", "BufWinEnter", "WinNew" }, {
    desc = "Fix all backgrounds",
    pattern = "*",
    callback = function()
        api.nvim_set_hl(0, "WinSeparator", { fg = "#27354c" }) -- Show Window Borders

        -- Snack Explorer
        api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })

        api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" }) -- BufferLine
        api.nvim_set_hl(0, "NoiceSplit", { bg = "NONE" }) -- NoiceSplit
    end,
})

api.nvim_create_autocmd({ "InsertEnter" }, {
    desc = "Enable Inlay Hints when in Insert Mode",
    pattern = "*",
    callback = function()
        vim.lsp.inlay_hint.enable(true)
    end,
})

api.nvim_create_autocmd({ "InsertLeave" }, {
    desc = "Disable Inlay Hints when outside of Insert Mode",
    pattern = "*",
    callback = function()
        vim.lsp.inlay_hint.enable(false)
    end,
})
