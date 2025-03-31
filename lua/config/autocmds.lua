-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd({ "BufEnter" }, {
    desc = "Make all background transparent",
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" }) -- Snack Explorer
        vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" }) -- BufferLine
        vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#27354c" }) -- Show Window Borders
    end,
})
