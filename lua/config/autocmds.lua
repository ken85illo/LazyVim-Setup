-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local api = vim.api

api.nvim_create_autocmd({ "BufAdd", "BufEnter", "VimEnter" }, {
    desc = "Fix all backgrounds",
    pattern = "*",
    callback = function()
        api.nvim_set_hl(0, "WinSeparator", { fg = "#27354c" }) -- Show Window Borders
        -- api.nvim_set_hl(0, "LspInlayHint", { fg = "#738091", bg = "NONE" }) -- Inlay Hints

        -- Snack Explorer
        api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
        -- api.nvim_set_hl(0, "SnacksPicker", { bg = "NONE" })
        -- api.nvim_set_hl(0, "SnacksNormal", { bg = "NONE" })
        -- api.nvim_set_hl(0, "SnacksNormalNC", { bg = "NONE" })

        api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" }) -- BufferLine
        api.nvim_set_hl(0, "NoiceSplit", { bg = "NONE" }) -- NoiceSplit
    end,
})
