-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.tabstop = 4 -- A tab character is 4 spaces
vim.opt.shiftwidth = 4 -- Indentation level is 4 spaces
vim.opt.expandtab = true -- Convert tabs to spaces

-- Language spell check
vim.opt.spell = true
vim.opt.spelllang = "en,it"

-- Set nvim to use custom python virtual environment
vim.g.python3_host_prog = "/home/gianluca/.venvs/nvim/bin/python"
