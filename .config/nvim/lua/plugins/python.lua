vim.g.lazyvim_python_lsp = "ty"
return {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
        servers = {
            ty = {},
        },
    },
}
