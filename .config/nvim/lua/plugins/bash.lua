return {
    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            servers = {
                bashls = {},
            },
        },
    },
    {
        "mfussenegger/nvim-lint",
        opts = {
            linters = {
                shellcheck = {},
            },
        },
    },
}
