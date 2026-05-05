return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                ["django-html"] = { "djlint" },
            },
        },
    },
    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                djangohtml = { "djlint" },
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            servers = {
                djlsp = {},
            },
        },
    },
    require("luasnip").filetype_extend("python", { "django" }),
    require("luasnip").filetype_extend("django-html", { "djangohtml", "html" }),
}
